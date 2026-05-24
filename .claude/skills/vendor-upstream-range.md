# Vendor a range of upstream igraph commits into rigraph

Vendor `krlmlr/igraph` from `main` (or descendant) up to a target branch
(default: `main-b-dev`) **one upstream commit per rigraph commit**, adapting
glue / Stimulus / R code as needed. Push the resulting commits to the `next`
branch.

The high-level shape mirrors `scripts/vendor-one.sh` but is driven manually so
that each step can be paused, patched, and validated before moving on.

## Inputs

- Target repo: `krlmlr/rigraph` (this checkout).
- Upstream repo: `krlmlr/igraph`.
- Range: review at
  `https://github.com/krlmlr/igraph/compare/<base>...<head>`.
  Defaults: base = `main`, head = `main-b-dev`.
- Target rigraph branch: `next` (final push).
- Working branch: `claude/<session>` or `next` directly — never push to other
  branches without explicit permission.

## Hard rules

- **Never** modify `src/vendor/cigraph/` or `src/vendor/igraph_version.h`
  by hand on their own. Those come from the upstream clone via the vendor
  script (`scripts/vendor.sh` or `scripts/vendor-one.sh` — interchangeable
  here). When a `patch/*.patch` needs to change, **update the patch and the
  vendored files under `src/vendor/cigraph/` in the same step** so the tree
  always reflects the patches applied on top of upstream — never hand-edit
  the vendored files without a corresponding patch change.
- **Never** change the public R interface of rigraph. Wrap downstream changes
  to preserve the existing user-facing API.
- **Never** put `.Call()` calls in R files other than `R/aaa-*.R`. Use
  `*_impl()` helpers from `R/aaa-auto.R` instead. If no `_impl()` exists, add
  one by adapting Stimulus (`tools/stimulus/functions-R*.yaml`,
  `tools/stimulus/types-R*.yaml`) and regenerate — do **not** hand-edit
  `src/rinterface.c` or `R/aaa-auto.R`. When you are already changing an R
  function for an upstream commit, **also rewrite any existing `.Call()` in
  that function to the equivalent `_impl()` call** as part of the same
  change; don't leave the legacy form behind once you've touched the file.
- **Never** skip hooks (`--no-verify`) or amend already-pushed commits.
- **One rigraph commit per upstream commit.** Concretely: amend the commit
  the vendor script creates with all the patch/Stimulus/R/test/snapshot
  changes needed to keep the package green for that upstream SHA. Extend
  the original `vendor: …` commit message with a short trailing summary of
  the additional work done (one bullet per non-trivial adaptation, e.g.
  patch added, Stimulus type adjusted, `foo()` rewritten to `_impl()`,
  superseded fallback for `bar()`). No squashing across upstream commits.

## Phase 0 — Verify the starting state

Before vendoring anything new, prove that the rigraph checkout is currently
clean and the vendored sources actually match `main` (or a descendant) of
upstream.

```bash
# Working tree must be clean.
git status

# Find which upstream SHA the last vendor commit references.
LAST_VENDORED=$(git log -n 30 --format="%s" -- src/vendor/cigraph \
  | sed -nr '/^.*igraph.igraph@([0-9a-f]+)( .*)?$/{s//\1/;p;}' \
  | head -n 1)
echo "Last vendored upstream SHA: $LAST_VENDORED"
```

Confirm `$LAST_VENDORED` is reachable from upstream `main` (clone upstream
if not already present at `../igraph`):

```bash
git -C ../igraph fetch origin main main-b-dev
git -C ../igraph merge-base --is-ancestor "$LAST_VENDORED" origin/main \
  && echo "OK: vendored SHA is an ancestor of upstream main" \
  || echo "WARN: vendored SHA is NOT on upstream main — confirm with user before continuing"
```

Then verify the package builds and all tests pass **before** any new work:

```bash
git clean -fdx src
_R_SHLIB_STRIP_=true R CMD INSTALL . --no-byte-compile 2>&1 | tail -20
Rscript -e 'testthat::test_local(reporter = "check", stop_on_failure = FALSE)' 2>&1 | tail -40
```

If anything fails here, **stop** and report — do not vendor on top of a broken
baseline.

## Phase 1 — Enumerate upstream commits to vendor

```bash
BASE_SHA=$LAST_VENDORED                       # from Phase 0
HEAD_REF=origin/main-b-dev                    # target

# Oldest-first list of first-parent commits to import.
UPSTREAM_COMMITS=$(git -C ../igraph log \
  --first-parent --reverse --format="%H" \
  "${BASE_SHA}".."${HEAD_REF}")

echo "$UPSTREAM_COMMITS" | wc -l   # number of commits to vendor
echo "$UPSTREAM_COMMITS" | head    # preview
```

Make a TODO list with one entry per SHA — work through them in order.

## Phase 2 — Per-commit loop

For each `$COMMIT` in `$UPSTREAM_COMMITS`, in order:

### 2a. Vendor a single upstream commit

Use the existing automation rather than re-implementing it. Either
`scripts/vendor.sh` or `scripts/vendor-one.sh` works — pick whichever is
convenient; this skill uses `vendor-one.sh` with `--commits 1` because it
gives finer control over the loop. Point it at the local upstream clone:

```bash
git -C ../igraph checkout "$COMMIT"
scripts/vendor-one.sh ../igraph --commits 1
```

The vendor script will:

- Re-export `src/vendor/cigraph` at this upstream SHA.
- Re-apply every `patch/*.patch` that still applies; **delete** any patch
  that no longer applies forward (that is intentional — see the rationale in
  `scripts/vendor.sh`).
- Run `make -f Makefile-cigraph` to regenerate `src/rinterface.c` and
  `R/aaa-auto.R` from Stimulus.
- Run `cpp11::cpp_register()` to refresh `src/cpp11.cpp`.
- Bump the fifth `Version:` component in `DESCRIPTION`.
- Create a `vendor: Update vendored sources to igraph/igraph@<sha>` commit
  (or a tag-flavoured message if this commit happens to carry a tag).

If the vendor script itself errors out (cmake fails, Makefile-cigraph fails,
Stimulus regeneration fails), the commit was **not** created. Resolve the
issue first — almost always this means either (a) a `patch/` file needs
adjusting for an upstream API change, or (b) a Stimulus definition needs to
be updated to keep the autogenerated bridge buildable. Edit `patch/` /
`tools/stimulus/*.yaml` and re-run the vendor script.

The vendor commit is the unit we keep amending throughout the rest of this
phase. Every adaptation that follows — patch tweaks, Stimulus changes, R
wrapper rewrites, snapshot/test updates — gets folded into **this same
commit** via `git commit --amend`. That is exactly what "one rigraph commit
per upstream commit" means: not a new commit on top, but an amendment of
the one the vendor script just made. The full amend (with message update)
happens in step 2f; in the meantime, intermediate `git commit --amend
--no-edit` calls between iterations are fine.

(Amending is fine — the commit has not been pushed yet. Once pushed, do
not amend.)

### 2b. Clean rebuild + tests

```bash
git clean -fdx src
_R_SHLIB_STRIP_=true R CMD INSTALL . --no-byte-compile 2>&1 | tail -20
Rscript -e 'testthat::test_local(reporter = "check", stop_on_failure = FALSE)' 2>&1 | tee /tmp/test.log | tail -60
```

`ccache` is preinstalled and configured — `git clean -fdx src` is fast and
rebuilds remain cheap. Always do the clean rebuild, not an incremental one,
so we never paper over a broken build with stale `.o` files.

### 2c. Fix failures, in priority order

If the build or any test fails, apply fixes in this order and stop at the
first level that resolves the issue:

1. **`patch/*.patch`** — when the upstream C API changed in a way that
   breaks compilation/linking and the right fix lives at the C level.
   - Assign the next available patch number; never renumber existing
     patches.
   - **Change the patch and the corresponding files under
     `src/vendor/cigraph/` in the same step.** The vendored tree must
     always equal `upstream + applied patches`, so updating one without
     the other puts the two out of sync. Concretely: edit the file under
     `src/vendor/cigraph/` to the new desired state, regenerate / hand-edit
     the matching `patch/*.patch` so that `patch -p1 --dry-run` would
     reproduce the same edit on top of a fresh upstream tree, then stage
     both changes together.
   - We have already vendored this commit; re-running the vendor script
     would clobber in-flight work. Just keep the updated vendored files
     plus the updated patch staged and re-run the rebuild.

2. **Stimulus definitions** (`tools/stimulus/functions-R*.yaml`,
   `tools/stimulus/types-R*.yaml`). Adapt the R↔C bridge to the new C API
   before changing any R-level code. Regenerate with
   `make -f Makefile-cigraph src/rinterface.c R/aaa-auto.R` and refresh
   `cpp11.cpp` with `R -q -e 'cpp11::cpp_register()'`.

   When a new `_impl()` function is needed because R code currently uses a
   bespoke `.Call()`, **add it via Stimulus and delete the bespoke wrapper**
   (see step 4 below).

3. **R code** (`R/`). When touching R code in this phase:
   - Run `Rscript -e 'devtools::document()'` **before** editing, so that any
     subsequent `.Rd` churn is attributable to the actual edit and not to
     stale roxygen output.
   - Replace every `.Call(...)` outside `R/aaa-*.R` with the matching
     `*_impl(...)` call. If no `_impl()` exists, go back to step 2 (adapt
     Stimulus), then come back here and remove the bespoke wrapper. The R
     convention is documented in `AGENTS.md`: "Avoid `.Call()` outside
     `*_impl()` in `aaa-auto.R`".
   - This applies to **existing** `.Call()` sites too: if you are already
     editing a function in this commit (for any reason — new argument,
     superseded fallback, bug fix), rewrite any `.Call()` it still contains
     to the equivalent `_impl()` call as part of the same change. Don't
     leave the legacy form behind once you've touched the file.
   - Preserve the existing public interface. New upstream arguments are
     exposed **behind the `...` gatekeeper** and the gate stays
     `check_dots_empty()`:
     ```r
     foo <- function(graph, ..., new_arg = NULL) {
       ensure_igraph(graph)
       check_dots_empty()
       ...
     }
     ```
   - When upstream introduces a new C interface convention that supersedes
     the old one (e.g. a renamed function or a changed return shape):
     - Call the new function from R.
     - If the old behaviour can be reproduced by composing existing igraph
       calls, **do so** — try hard to keep behaviour bit-identical so that
       no test snapshot needs to move.
     - Where exact replication is impossible, provide a fallback that
       matches the old interface as closely as possible and guard it with
       `lifecycle::signal_stage("superseded", "foo()")` so users see the
       deprecation path.
   - Run `air format .` over any R file you touch.
   - Run `Rscript -e 'devtools::document()'` again after edits.

4. **Snapshots** (`tests/testthat/_snaps/`). Only accept updated snapshots
   after you have confirmed the new output is correct.
   ```bash
   Rscript -e 'testthat::snapshot_accept("name-of-test-file")'
   ```

5. **Tests** (`tests/testthat/test-*.R`). Last resort. Only change a test
   when the assertion targeted a now-removed C-level detail; do **not**
   weaken assertions. When you do change a test, add a one-line comment
   immediately above the change pointing at the upstream commit that forced
   it, e.g. `# upstream igraph@<short-sha>: <reason>`.

After every change, re-run **both** the clean rebuild and the tests:

```bash
git clean -fdx src
_R_SHLIB_STRIP_=true R CMD INSTALL . --no-byte-compile 2>&1 | tail -10
Rscript -e 'testthat::test_local(reporter = "check", stop_on_failure = FALSE)' 2>&1 | tail -40
```

Iterate until all tests pass.

### 2d. Run examples

Once tests pass, exercise the examples (they catch problems that the unit
tests miss, particularly around the user-facing wrappers we just adapted):

```bash
Rscript -e 'devtools::run_examples(fresh = TRUE, run_dontrun = FALSE)' 2>&1 | tail -60
```

Treat any error here the same as a test failure: drop back to step 2c, fix,
re-run rebuild + tests + examples.

### 2e. Final `rcmdcheck`

After tests and examples are green, do **one** full check pass:

```bash
Rscript -e 'rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"), error_on = "warning")' 2>&1 | tail -40
```

Resolve any new ERROR or WARNING. Pre-existing NOTEs are fine.

### 2f. Fold all adaptations into the vendor commit

Everything we changed for this upstream commit — Stimulus, patches, the
files under `src/vendor/cigraph/` that the patches touched, regenerated
bridge, R wrappers, snapshots, tests, `NAMESPACE`, `.Rd` — belongs in the
**same** rigraph commit as the `vendor: …` message. As long as that commit
has not been pushed yet, amend it and **extend the commit message with a
short summary of the additional work done**, so a reader can see at a
glance what adaptation a given upstream SHA required:

```bash
Rscript -e 'devtools::document()'   # ensure docs are in sync one last time
air format .

git add -- patch/ src/vendor/cigraph/ tools/stimulus/ src/rinterface.c \
           src/rinterface.h R/ NAMESPACE man/ tests/ DESCRIPTION \
           src/cpp11.cpp R/aaa-auto.R
git status   # sanity-check nothing unexpected is staged

# Open the editor on the existing message and append an "Adaptations:"
# trailer summarising the non-trivial work folded in.
git diff --cached --quiet || git commit --amend
```

The amended message keeps the original `vendor: Update vendored sources to
igraph/igraph@<sha>` subject and body, then adds a trailing block like:

```
Adaptations:
- patch/0123-foo.patch: adjust to new igraph_foo() signature
- Stimulus: add closure variant for igraph_bar_callback
- R/baz.R: rewrite .Call() to baz_impl(); new optional `weights` behind
  ... + check_dots_empty()
- R/qux.R: superseded fallback for qux() via lifecycle::signal_stage()
- tests/testthat/test-qux.R: drop assertion on removed C-level field
  (upstream igraph@<short-sha>)
- snapshots: accept regenerated output for test-baz
```

One bullet per non-trivial adaptation is enough; trivial regeneration (e.g.
`R/aaa-auto.R`, `src/rinterface.c`, `src/cpp11.cpp` produced mechanically
by Stimulus / `cpp11::cpp_register()`) does not need its own bullet.

The result is exactly one rigraph commit corresponding to exactly one
upstream commit, carrying both the vendored sources and the R-side
adaptations needed to keep the package green, with a self-describing
message.

### 2g. Push and proceed

Push the new commit to `next` before moving on. Using `-u` once is enough;
subsequent pushes can omit it.

```bash
git push -u origin next
# Retry policy: on network failure only, retry up to 4× with exponential
# backoff (2s, 4s, 8s, 16s). Never use --force / --force-with-lease unless
# the user explicitly asks for it.
```

Move on to the next upstream commit in the list.

## Phase 3 — Wrap up

When the full range has been vendored:

```bash
# Sanity check: the last vendor message should reference HEAD_REF's tip.
git log -n 1 --format="%s" -- src/vendor/cigraph

# Final full check on the assembled branch.
Rscript -e 'rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"), error_on = "warning")' 2>&1 | tail -40
```

Report a summary to the user:

```
Vendored N upstream commits onto `next`:
  - igraph/igraph@<sha1>  → rigraph <sha1>
  - igraph/igraph@<sha2>  → rigraph <sha2>
  ...
Adapted: <files / Stimulus entries / patches added>
Final R CMD check: <status>
```

## Quick decision table

| Symptom | Fix lives in |
|---|---|
| C compile/link error from upstream API change | `patch/` |
| Autogenerated bridge no longer compiles | `tools/stimulus/*.yaml` + regenerate |
| Bespoke `.Call()` in `R/foo.R` | Add `_impl()` via Stimulus; delete wrapper |
| R wrapper needs a new optional argument | Add behind `...` + `check_dots_empty()` |
| Upstream replaces a function | Call new; replicate old via existing igraph calls if possible; otherwise fallback + `lifecycle::signal_stage("superseded")` |
| Snapshot diff after behaviour confirmed correct | `testthat::snapshot_accept(...)` |
| Test asserts on removed C-level detail | Adapt test, add `# upstream igraph@<sha>: …` comment |
| Missing export / namespace error | `devtools::document()` |

## Constraints recap

- One rigraph commit per upstream commit, achieved by amending the commit
  the vendor script created and extending its message with an
  `Adaptations:` summary of the work folded in.
- Amending is fine **before** pushing; never after.
- No interface changes — new args go behind `...` + `check_dots_empty()`.
- No `.Call()` outside `R/aaa-*.R`; route through `_impl()`. Rewrite
  existing `.Call()` sites in any function you're already editing.
- Superseded fallbacks signalled with `lifecycle::signal_stage("superseded")`.
- `src/vendor/cigraph/` and `src/vendor/igraph_version.h` may only change
  via the vendor script or via a paired `patch/` + vendored-files edit
  (never one without the other).
- Push only to the `next` branch (or to the working branch named in the
  session instructions); never force-push.
