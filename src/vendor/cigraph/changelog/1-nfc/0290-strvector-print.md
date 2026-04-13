# igraph_strvector_print(), igraph_strvector_fprint()

**Category**: Core data structures

`igraph_strvector_print()` no longer takes a file parameter. Use `igraph_strvector_fprint()` to print to a file.

---

**Original changelog wording:**

> `igraph_strvector_print()` no longer takes a file parameter. Use `igraph_strvector_fprint()` to print to a file.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0290-strvector-print.md
   9     0     0     0  changelog/2-added/0350-strvector-fprint.md
  16    23    12    21  include/igraph_strvector.h
  80    68    62    66  src/core/strvector.c
   5     5     1     1  tests/unit/strvector_set_len_remove_print.c
   8     2     8     2  tests/unit/igraph_strvector.c
  14     0    14     0  tests/unit/igraph_strvector.out
```

Notes on remaining differences:

- `include/igraph_strvector.h`: remaining diff (12+/21-) covers `igraph_strvector_swap()` and `igraph_strvector_update()` declarations, struct field change to `const char **`, and removal of deprecated functions (`igraph_strvector_add`, `igraph_strvector_copy`, `igraph_strvector_set2`) — all future entries.
- `src/core/strvector.c`: remaining diff (62+/66-) covers implementations of `igraph_strvector_swap()` and `igraph_strvector_update()`, `const char **` changes throughout, and removal of deprecated function bodies — all future entries.
- `tests/unit/strvector_set_len_remove_print.c`: 1+/1- remaining is a copyright comment update not part of this entry.
- `tests/unit/igraph_strvector.c` and `.out`: unchanged (8+/2- and 14+/0-) — the `igraph_strvector_swap` test addition belongs to a future entry.
