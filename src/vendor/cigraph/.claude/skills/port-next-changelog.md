---
name: port-next-changelog
description: Port the next changelog entry from the `next` branch to `main-dev`. Identifies the first unported change, applies the corresponding code diff, builds, tests, and commits with proof-of-work.
user_invocable: true
---

# Port Next Changelog Entry from `next` to `main-dev`

You are porting changes from the `next` branch to the `main-dev` branch of the igraph C library, one changelog entry at a time.

## Helper tool

`tools/port-next-helper.sh` automates the mechanical parts. Available commands:

| Command | What it does |
|---------|-------------|
| `tools/port-next-helper.sh identify` | Finds the next unported entry and prints its content |
| `tools/port-next-helper.sh before` | Saves `git diff --numstat HEAD..next` to `/tmp/igraph_numstat_before.txt` |
| `tools/port-next-helper.sh after` | Saves `git diff --numstat HEAD..next` to `/tmp/igraph_numstat_after.txt` |
| `tools/port-next-helper.sh table FILE...` | Prints the 4-column proof-of-work table for specified files |
| `tools/port-next-helper.sh diff FILE` | Shows `git diff main-dev..next -- FILE` |
| `tools/port-next-helper.sh show FILE` | Shows `FILE` from the `next` branch |
| `tools/port-next-helper.sh setup` | Ensures build dir exists and deps are installed |

## Overview

The `changelog/` directory on `next` has subdirectories `1-nfc/`, `2-added/`, `3-modified/`, `4-deprecated/`, each containing numbered markdown files (`0010-*.md`, `0020-*.md`, ...). The `main-dev` branch has a subset of these already ported. Your job is to port the **next unported entry** (in numerical order within each category, processing all of `1-nfc/` before `2-added/`, etc.).

## Step-by-step procedure

### 1. Setup

```bash
git fetch origin main-dev next
git checkout main-dev
git pull origin main-dev
tools/port-next-helper.sh setup
```

### 2. Identify the next changelog entry to port

```bash
tools/port-next-helper.sh identify
```

This prints `NEXT_ENTRY=<dir>/<file>` and the full changelog content. That file is your `TARGET_FILE` in `TARGET_DIR`.

### 3. Capture the BEFORE proof-of-work

```bash
tools/port-next-helper.sh before
```

Saves the full numstat to `/tmp/igraph_numstat_before.txt`. You'll use it after the change.

### 4. Identify the relevant files and diff

```bash
# See all differences for a specific file
tools/port-next-helper.sh diff path/to/file

# See the file as it exists on next
tools/port-next-helper.sh show path/to/file
```

Use the changelog entry description to determine which files are affected. Show their diffs to understand which hunks belong to this entry.

### 5. Apply the change

**IMPORTANT**: The diff between `main-dev` and `next` contains ALL remaining changes, not just this one entry. Select only the hunks that correspond to the current changelog entry.

**Strategy:**
- Read the changelog entry carefully — it describes specific functions, types, or behaviors that changed
- Use `tools/port-next-helper.sh diff <file>` to see remaining differences per file
- Select only hunks that modify the specific functions/types/behaviors described in the changelog
- Leave other hunks untouched — they belong to later changelog entries

**Applying changes:**
- Use the Edit tool to make targeted edits to files on `main-dev`
- Do NOT use `git checkout next -- <file>` (applies ALL changes, not just this entry's)
- Do NOT use `git cherry-pick` (changes were not made as individual commits on `next`)

### 6. Include test changes

```bash
tools/port-next-helper.sh diff tests/
```

Look for tests that exercise the specific functions/behavior described in the changelog entry. Include those test changes too.

### 7. Copy the changelog file from next

```bash
mkdir -p changelog/TARGET_DIR/
tools/port-next-helper.sh show changelog/TARGET_DIR/TARGET_FILE > changelog/TARGET_DIR/TARGET_FILE
```

### 8. Build and test

```bash
cd /home/user/igraph/build
cmake --build . --target build_tests 2>&1 | tail -30
ctest --output-on-failure -j4 2>&1 | tail -50
```

If build fails, fix the issues. Common problems:
- Missing type definitions or declarations that are part of a different changelog entry — add minimal forward declarations or stubs
- Conflicting changes with previously ported entries — adapt minimally

Fix failures and repeat until green.

### 9. Create a temporary commit and capture AFTER numstat

```bash
git add -A
git commit -m "temp"
tools/port-next-helper.sh after
```

### 10. Generate the proof-of-work table

```bash
tools/port-next-helper.sh table changelog/TARGET_DIR/TARGET_FILE path/to/file1 path/to/file2 ...
```

List all files you modified. The tool reads both before/after numstat files and prints the 4-column table:

```
add-b  del-b  add-a  del-a  file
```

### 11. Update the changelog file with proof-of-work

Append to `changelog/TARGET_DIR/TARGET_FILE`:

`````markdown

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
<table from step 10>
```

Notes on remaining differences:
<explain the remaining differences, any increases or notable patterns>
`````

### 12. Commit

Amend the temporary commit with a descriptive message:

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

If push fails due to network errors, retry up to 4 times with exponential backoff (2s, 4s, 8s, 16s).

## Key principles

- **Minimal adaptation**: Apply the diff from `next` as-is whenever possible. Only adapt if strictly necessary for compilation/tests.
- **One entry at a time**: Only port the single next changelog entry, nothing more.
- **Proof of work**: The numstat comparison proves the change was correctly ported by showing the diff to `next` decreased for affected files.
- **Explain increases**: If any file shows an increase in diff to `next` after the change, explain why in the notes (e.g., proof-of-work section added to changelog file increases the `del` count since `next` doesn't have that section).
- **Tests must pass**: Build and run the full test suite. Fix any failures before committing.

## Token-saving tips

- Use `tools/port-next-helper.sh diff <file>` instead of reading full files when possible
- Read only the sections of large files that are relevant to the change
- Use the Grep tool to find relevant function definitions rather than reading entire files
- The helper's `table` command does the numstat arithmetic — don't do it manually
- Don't read files you won't modify
