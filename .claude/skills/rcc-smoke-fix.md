Scheduled job: scan all `*-dev` branches (including `broken-*-dev`) in
`krlmlr/rigraph` for the earliest commit whose `rcc` commit-status (set by the
"Smoke test: stock R" job in the `rcc` workflow) is `failure` since 2026-04-11.
For each such branch, if no `broken-<sha>-dev` branch exists yet (full 40-char
SHA), create it, fix `testthat::test_local()` and `rcmdcheck::rcmdcheck()`,
update snapshots, then cherry-pick all later vendor commits from the
`*-dev` branch and push.
Never modify vendored C sources (`src/vendor/cigraph/`).

---

<!--
## Operation essence (read this first)

Why this skill exists.
  The igraph C core is vendored hourly into `src/vendor/cigraph/` from
  `krlmlr/igraph@main`. A vendor commit can break R-side glue, R code, or
  test snapshots. We do not rewrite the vendor commit; instead we author a
  parallel `broken-<sha>-dev` branch that starts at the failing commit,
  layers on the necessary R-side fix, and re-applies all later vendor
  commits on top. Promoting the green tip back into the parent `*-dev`
  branch is a manual step performed outside this skill (today there is no
  CI/CD that does it automatically; this may be automated in the future).

End-to-end workflow.
  1. Refresh `krlmlr/*` remote-tracking refs from scratch — the upstream
     dev branches are force-pushed and any cached state is suspect.
  2. Enumerate `*-dev` branches and existing `broken-*-dev` branches in one
     pass.
  3. For each `*-dev` branch, walk first-parent history oldest-first since
     SINCE and look up each commit's `rcc` commit-status until the earliest
     `failure` is found. Skip the branch if no failure exists or if the
     corresponding `broken-<sha>-dev` is already published.
  4. For every (branch, sha) pair that needs work:
     a. Check out `<sha>` on a new local branch `broken-<sha>-dev`.
     b. Reproduce the breakage locally — install the package, run
        `testthat::test_local()`, then `rcmdcheck::rcmdcheck()` (which
        builds the package tarball and checks it). Read the error output carefully to
        classify the failure (compile, link, runtime, snapshot,
        NOTE/WARNING).
     c. Apply the smallest fix in priority order: `patch/` → glue /
        Stimulus → R code → snapshots → tests. Stop at the first level
        that resolves the failure. Never touch `src/vendor/cigraph/`.
     d. `rcmdcheck::rcmdcheck()` until clean (`Status: OK` or only
        pre-existing NOTE).
     e. Cherry-pick every remaining commit from the upstream `*-dev`
        branch on top of the fix. Vendor commits apply cleanly by
        construction; non-vendor fix commits already on `*-dev` must be
        carried forward and may legitimately conflict with our own fix —
        resolve, do not skip.
     f. Push `broken-<sha>-dev` to `krlmlr` with `--force-with-lease` and
        move on to the next pair.

Environment assumptions (current).
  * R 4.x and standard development tooling (gcc/g++, make, git, `curl`,
    `jq`) are pre-installed.
  * The `gh` CLI is NOT installed and GitHub Actions build logs are NOT
    accessible from this environment. Failures must be reproduced locally —
    there is no shortcut by reading a CI log.
  * GitHub commit-status lookups should use a GitHub MCP tool when the
    skill is invoked by an agent that has one. As a portable fallback, hit
    `GET /repos/{owner}/{repo}/commits/{sha}/statuses` with `curl` and a
    `GITHUB_TOKEN` (see Step 3); filter for `context == "rcc"`.

When CI build logs become available (forward-looking).
  Once the harness can fetch GitHub Actions logs, augment Step 4b: before
  the local rebuild, fetch the failed `rcc / Smoke test: stock R` run for
  `<sha>` and read the tail. Most diagnostics point straight at the file
  and line, allowing the agent to draft a targeted fix and skip the slow
  initial `R CMD INSTALL`. The local install + `testthat::test_local()` +
  `rcmdcheck::rcmdcheck()` cycle remains the authoritative final gate —
  logs only short-circuit triage, they do not replace verification.
-->

---

## Step 1 — Refresh local mirror of krlmlr/rigraph (always, force-reset)

```bash
if ! git remote get-url krlmlr &>/dev/null 2>&1; then
  git remote add krlmlr https://github.com/krlmlr/rigraph.git
fi
# Hard-reset: throw away any cached remote-tracking state
git fetch krlmlr --force --prune --tags
```

## Step 2 — Collect all branches and existing `broken-*` branches in one pass

```bash
# All krlmlr remote-tracking branches that end in -dev
DEV_BRANCHES=$(git branch -r \
  | grep -oP 'krlmlr/\K\S+' \
  | grep -E '\-dev$' \
  | sort)

# All broken-*-dev branches already on krlmlr (to skip re-doing work)
BROKEN_BRANCHES=$(git branch -r \
  | grep -oP 'krlmlr/\K\S+' \
  | grep -E '^broken-.*-dev$')

echo "=== Dev branches ===" && echo "$DEV_BRANCHES"
echo "=== Broken branches (existing) ===" && echo "$BROKEN_BRANCHES"
```

## Step 3 — For each `*-dev` branch, find the earliest failing commit

Iterate over every entry in `$DEV_BRANCHES`. For each `$BRANCH`:

```bash
SINCE="2026-04-11"
REPO="krlmlr/rigraph"

# Commits on this branch since SINCE, oldest-first (first-parent only)
COMMITS_OLDEST_FIRST=$(git log "krlmlr/$BRANCH" \
  --first-parent --since="$SINCE" --format="%H" --reverse)
```

Define a concrete `lookup_rcc_status` helper. The default below uses `curl`
+ `jq` so it works without `gh` (CC Web does not ship `gh`); pick whichever
of the alternatives matches the host environment:

```bash
# Default: portable HTTPS, no `gh` needed. Requires `curl` and `jq`.
lookup_rcc_status() {
  local sha="$1"
  curl -fsSL \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
    "https://api.github.com/repos/$REPO/commits/$sha/statuses" \
    | jq -r '[.[] | select(.context == "rcc")] | first | .state // "none"'
}

# Alternative when `gh` is installed (also requires `jq`):
#   gh api "repos/$REPO/commits/$sha/statuses" \
#     | jq -r '[.[] | select(.context == "rcc")] | first | .state // "none"'
#
# Alternative when invoked by an agent that exposes a GitHub MCP:
#   call the commit-statuses endpoint for $REPO at $sha, then pick the
#   entry whose `context == "rcc"`. No `jq` needed in this path.
```

Walk the commits oldest-first, stop at the first `failure`. Use `pipefail`
so a failed status lookup is not silently swallowed:

```bash
set -o pipefail

FIRST_FAIL=""
while IFS= read -r SHA; do
  STATUS=$(lookup_rcc_status "$SHA")
  echo "$BRANCH  ${SHA}  $STATUS"
  if [[ "$STATUS" == "failure" ]]; then
    FIRST_FAIL="$SHA"
    break
  fi
done <<< "$COMMITS_OLDEST_FIRST"

# Existence check comes AFTER finding the earliest failure.
# Checking inside the loop would short-circuit on a later already-fixed commit
# before reaching an earlier failure that still has no fix branch.
if [[ -z "$FIRST_FAIL" ]]; then
  echo "$BRANCH: no rcc failure — skip"
elif echo "$BROKEN_BRANCHES" | grep -qxF "broken-${FIRST_FAIL}-dev"; then
  echo "$BRANCH: broken-${FIRST_FAIL}-dev already exists — skip"
else
  echo "NEEDS_FIX  $BRANCH  $FIRST_FAIL"
fi
```

Collect all `NEEDS_FIX  <branch>  <sha>` lines. Process them in order.

## Step 4 — Create, fix, and push a `broken-*` branch

Repeat for each `NEEDS_FIX` pair `($BRANCH, $SHA)`:

### 4a. Check out the failing commit on the new fix branch

```bash
FIX_BRANCH="broken-${SHA}-dev"
git checkout -B "$FIX_BRANCH" "$SHA"
```

IMPORTANT: Keep the `-dev` suffix in the fix branch name. It ensures that each intermediate commit is checked on CI/CD.

### 4b. Install and run tests; collect failures

```bash
set -o pipefail
_R_SHLIB_STRIP_=true R CMD INSTALL . --no-byte-compile 2>&1 | tail -20
Rscript -e 'testthat::test_local(stop_on_failure = FALSE)' 2>&1
```

`pipefail` is required so that a failing `R CMD INSTALL` propagates its
non-zero exit status through the `tail` pipe. The last 20 lines are
typically enough to diagnose a build failure; if they aren't, drop the pipe
and re-run for the full log.

### 4c. Fix issues — allowed modifications and priority order

**Never modify `src/vendor/cigraph/` or `src/vendor/igraph_version.h`.**
Everything else — including `patch/` — may be changed.

Apply fixes in this priority order (stop at the first level that resolves the failure):

1. **`patch/`** — R-specific patches to the C core. Prefer adjusting or adding a
   patch here when the C API changed in a way that breaks compilation or linking.
   Assign the next available number; do not renumber existing patches.

2. **Glue / Stimulus definitions** (`src/*.cpp`, auto-generated stubs, `.decor`
   files, or Stimulus-style interface definitions) — adapt the R↔C bridge to a
   changed C API before touching any R-level code.

3. **R code** (`R/`) — update high-level R functions, fix argument handling, etc.

4. **Snapshots** (`tests/testthat/_snaps/`) — accept updated snapshots only after
   the underlying behaviour is confirmed correct:

   ```bash
   Rscript -e 'testthat::snapshot_accept()'
   ```

   Or for a single test file: `testthat::snapshot_accept("test-name")`.

5. **Tests** (`tests/testthat/test-*.R`) — change test code **only as a last
   resort**, e.g. when the test itself was testing a now-removed C-level detail.
   Do not weaken assertions; adapt them to the new correct behaviour.

Other common fixes:

| Symptom | Fix |
|---------|-----|
| Missing export / namespace error | `Rscript -e 'roxygen2::roxygenize()'` |
| NOTE / WARNING in `rcmdcheck` output | Fix in `R/`, `man/`, or `patch/` |

After any change, re-run:

```bash
Rscript -e 'testthat::test_local(stop_on_failure = FALSE)' 2>&1
```

Iterate until all tests pass.

### 4d. Final check

Use `rcmdcheck::rcmdcheck()` to build the package tarball and check it:

```bash
set -o pipefail
Rscript -e 'rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"), error_on = "warning")' 2>&1 | tail -20
```

Must show `Status: OK` or at most `1 NOTE` (pre-existing CRAN notes are
fine). Fix any new ERRORs or new WARNINGs.

### 4e. Commit the fix

```bash
git add -- R/ tests/ man/ NAMESPACE DESCRIPTION
# Only if there are staged changes:
git diff --cached --quiet || \
  git commit -m "fix: R code and snapshots for failing rcc at ${SHORT}"
```

### 4f. Cherry-pick all remaining commits from `*-dev`

```bash
# Commits on the *-dev branch that come *after* the failing commit
REMAINING=$(git log "${SHA}..krlmlr/${BRANCH}" \
  --first-parent --format="%H" --reverse)

for C in $REMAINING; do
  git cherry-pick "$C" --allow-empty
done
```

Most of these commits are vendor-only and apply cleanly. However, the range
**may include non-vendor fix commits** (e.g. a later glue-code repair that was
pushed directly to the `*-dev` branch). That is expected and correct — those
fixes address *subsequent* breakages that were introduced after our fix point
and must be carried forward.

Conflict handling:

- Conflict on `src/vendor/cigraph/` or `src/vendor/igraph_version.h`: should
  never happen; stop and report.
- Conflict on any other file (glue code, `patch/`, `R/`, tests): the
  cherry-picked commit is a fix commit whose change overlaps with our own fix.
  Resolve by accepting the cherry-picked version (`git checkout --theirs`) or
  by merging manually, then `git cherry-pick --continue`. Do **not** use
  `--skip` unless the commit is genuinely a no-op after our fix.

After all cherry-picks, re-run the final check (same form as Step 4d):

```bash
set -o pipefail
Rscript -e 'rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"), error_on = "warning")' 2>&1 | tail -20
```

to confirm the fully-assembled branch is clean.

### 4g. Push the fix branch

```bash
git push krlmlr "$FIX_BRANCH" --force-with-lease
```

## Step 5 — Continue

Return to Step 3 / Step 4 for the next `NEEDS_FIX` entry.
When all are processed, report a summary:

```text
Fixed: broken-<sha40>-dev (from main-dev, cherry-picked N commits)
Fixed: broken-<sha40>-dev (from other-dev, cherry-picked M commits)
Skipped (already fixed): broken-<sha40>-dev exists
No failure found: yet-another-dev
```

---

## Constraints (hard rules)

- **Never** modify `src/vendor/cigraph/`, `src/vendor/igraph_version.h`,
  or any `scripts/vendor*.sh` file. `patch/` **may** be modified.
- **Never** amend commits that have already been pushed.
- **Commit status to check**: context `rcc` (not the full check-run name).
- **Branch target**: all pushes go to the `krlmlr` remote (`krlmlr/rigraph`) to a branch named `broken-<sha>-dev` (full 40-char SHA).
- Branches being force-pushed to: always use the freshly-fetched `krlmlr/*`
  ref; never rely on any previously-checked-out state.
- **Reproduce locally, do not guess.** GitHub Actions logs are not reachable
  from this environment yet, so every fix must be validated by a local
  `R CMD INSTALL` + `testthat::test_local()` + `rcmdcheck::rcmdcheck()` cycle.
- **Tooling fallback**: if `gh` is not installed, query the
  `/repos/<owner>/<repo>/commits/<sha>/statuses` endpoint via `curl` with
  `GITHUB_TOKEN`, or via a GitHub MCP tool when the agent provides one.
