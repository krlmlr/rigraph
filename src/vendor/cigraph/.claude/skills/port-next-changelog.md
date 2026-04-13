---
name: port-next-changelog
description: Port the next changelog entry from the `next` branch to `main-dev`. Identifies the first unported change, applies the corresponding code diff, builds, tests, and commits with proof-of-work.
user_invocable: true
---

# Port Next Changelog Entry from `next` to `main-dev`

You are porting changes from the `next` branch to the `main-dev` branch of the igraph C library, one changelog entry at a time.

## Overview

The `changelog/` directory on `next` has subdirectories `1-nfc/`, `2-added/`, `3-modified/`, `4-deprecated/`, each containing numbered markdown files (`0010-*.md`, `0020-*.md`, ...). The `main-dev` branch has a subset of these already ported. Your job is to port the **next unported entry** (in numerical order within each category, processing all of `1-nfc/` before `2-added/`, etc.).

## Step-by-step procedure

### 1. Setup (do all in parallel)

```bash
git fetch origin main-dev next
git checkout main-dev
git pull origin main-dev
```

Ensure a build directory exists:

```bash
cd /home/user/igraph
if [ ! -f build/CMakeCache.txt ]; then
  mkdir -p build && cd build && cmake .. -GNinja && cd ..
fi
```

Install dependencies if not already done:

```bash
tools/install-deps.sh
```

### 2. Identify the next changelog entry to port

Compare what's on `main-dev` vs `next` in the changelog directories. Process categories in order: `1-nfc`, `2-added`, `3-modified`, `4-deprecated`.

```bash
# List what main-dev has
for dir in 1-nfc 2-added 3-modified 4-deprecated; do
  echo "=== $dir on main-dev ==="
  git ls-tree --name-only main-dev:changelog/$dir/ 2>/dev/null || echo "(not present)"
done

# List what next has
for dir in 1-nfc 2-added 3-modified 4-deprecated; do
  echo "=== $dir on next ==="
  git ls-tree --name-only next:changelog/$dir/ 2>/dev/null || echo "(not present)"
done
```

The **first file** in the `next` listing that is NOT in the `main-dev` listing (ignoring README.md) is the target. Call it `TARGET_FILE` in category `TARGET_DIR`.

### 3. Read the changelog entry

```bash
git show next:changelog/TARGET_DIR/TARGET_FILE
```

This describes the change. Use it to understand what code modifications are needed.

### 4. Capture the BEFORE proof-of-work

Run `git diff --numstat HEAD..next` and filter to only files that will be modified by this change. Save the output — you'll need the "before" numbers.

To identify which files are relevant, look at the diff between `main-dev` and `next` for files mentioned in or related to the changelog entry:

```bash
# Get the full numstat for reference
git diff --numstat HEAD..next > /tmp/numstat_before.txt
cat /tmp/numstat_before.txt
```

### 5. Apply the change

The change should be a subset of `git diff main-dev..next`. Extract only the relevant hunks:

```bash
# Show the full diff for a specific file between main-dev and next
git diff main-dev..next -- path/to/file
```

For each relevant file:

1. Read the current file on `main-dev` (which is HEAD)
2. Read the target version on `next`: `git show next:path/to/file`
3. Apply only the hunks related to THIS changelog entry, not other changes

**IMPORTANT**: The diff between `main-dev` and `next` contains ALL remaining changes, not just this one entry. You must carefully select only the hunks that correspond to the current changelog entry. Look at the changelog description to understand what the change does, then pick only matching hunks.

**Strategy for identifying relevant hunks:**

- Read the changelog entry carefully — it describes specific functions, types, or behaviors that changed
- Use `git diff main-dev..next -- <file>` to see all remaining differences
- Select only hunks that modify the specific functions/types/behaviors described in the changelog
- Leave other hunks untouched — they belong to later changelog entries

**Applying changes:**

- Use the Edit tool to make targeted edits to files on main-dev
- Do NOT use `git checkout next -- <file>` as that would apply ALL changes, not just this entry's
- Do NOT use `git cherry-pick` as the changes were not made as individual commits on `next`

### 6. Include test changes

Check if there are test changes related to this entry:

```bash
git diff main-dev..next -- tests/
```

Look for tests that exercise the specific functions/behavior described in the changelog entry. Include those test changes too.

### 7. Copy the changelog file

```bash
# Ensure the target directory exists on main-dev
mkdir -p changelog/TARGET_DIR/

# Copy the changelog file from next
git show next:changelog/TARGET_DIR/TARGET_FILE > changelog/TARGET_DIR/TARGET_FILE
```

### 8. Build and test

```bash
cd /home/user/igraph/build
cmake --build . --target build_tests 2>&1 | tail -30
```

If build fails, fix the issues. Common problems:

- Missing type definitions or function declarations that are part of a different changelog entry — add minimal forward declarations or stubs
- Conflicting changes with previously ported entries — adapt minimally

Run tests:

```bash
cd /home/user/igraph/build
ctest --output-on-failure -j4 2>&1 | tail -50
```

If tests fail, investigate and fix. Re-build and re-test until green.

### 9. Capture the AFTER proof-of-work

1. Create a temporary commit
2. Capture `git diff --numstat HEAD..next` for affected files
3. Amend the commit with the final message

```bash
# Stage all changes
git add -A
# Create temp commit
git commit -m "temp"
# Capture after numstat
git diff --numstat HEAD..next > /tmp/numstat_after.txt
# We'll amend this commit with the real message
```

### 10. Prepare the proof-of-work table

For each file that was modified, create a side-by-side table with four numbers:

```txt
add-before  del-before  add-after  del-after  filename
```

Extract the relevant lines from `/tmp/numstat_before.txt` and `/tmp/numstat_after.txt`. The format of `git diff --numstat` is `ADD\tDEL\tFILE`. Combine before and after into four columns.

### 11. Update the changelog file with proof-of-work

Append to the changelog file `changelog/TARGET_DIR/TARGET_FILE`:

`````markdown

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
<table here>
```

Notes on remaining differences:
<explain the remaining differences, any increases or notable patterns>
`````

### 12. Commit

Amend the temporary commit (or create a new one) with a descriptive message:

```bash
git add -A
git commit --amend -m "$(cat <<'EOF'
<short title describing the change>

<1-2 sentence description from the changelog entry>

Proof of work: git diff --numstat HEAD..next (before -> after)

<the four-column table>

<session URL>
EOF
)"
```

**Commit message format** (follow the pattern of existing commits):

- Title: `nfc: <short description>` for NFC changes, or descriptive title for other categories
- Body: explanation of what changed
- Proof of work section with the numstat table
- Session URL at the end

### 13. Push

```bash
git push -u origin main-dev
```

If push fails due to network errors, retry up to 4 times with exponential backoff.

## Key principles

- **Minimal adaptation**: Apply the diff from `next` as-is whenever possible. Capture all diffs that are relevant for the change. Only adapt if strictly necessary for compilation/tests.
- **One entry at a time**: Only port the single next changelog entry, nothing more.
- **Proof of work**: The numstat comparison proves the change was correctly ported by showing the diff to `next` decreased for affected files.
- **Explain increases**: If any file shows an increase in diff to `next` after the change, explain why in the notes (e.g., proof-of-work section added to changelog file).
- **Tests must pass**: Build and run the full test suite. Fix any failures before committing.

## Token-saving tips

- Use `git diff main-dev..next -- <specific-file>` instead of reading full files when possible
- Read only the sections of large files that are relevant to the change
- Use `grep` / `Grep` to find relevant function definitions rather than reading entire files
- Capture numstat early and filter to only relevant files
- Don't read files you won't modify
