# igraph_multiple_t

**Category**: Core types and naming

The `igraph_multiple_t` enum type was removed from the public API as it was essentially a Boolean. The symbolic constants `IGRAPH_MULTIPLE` (same as `true`) and `IGRAPH_NO_MULTIPLE` (same as `false`) were kept to improve readability of code written directly in C.

---

**Original changelog wording:**

> The `igraph_multiple_t` enum type was removed from the public API as it was essentially a Boolean. The symbolic constants `IGRAPH_MULTIPLE` (same as `true`) and `IGRAPH_NO_MULTIPLE` (same as `false`) were kept to improve readability of code written directly in C.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0002-multiple-t.md
   3     3     0     0  include/igraph_adjlist.h
   2     1     0     0  include/igraph_constants.h
   4     4     0     0  src/graph/adjlist.c
   1     1     0     0  src/graph/internal.h
   3     3     2     2  src/graph/type_indexededgelist.c
   2     2     0     0  tests/benchmarks/igraph_neighborhood.c
   4     7     0     0  tests/unit/adj.c
   1     1     0     0  tests/unit/adjlist.c
   1     1     0     0  tests/unit/igraph_i_neighbors.c
```

Notes on remaining differences:

- `changelog/1-nfc/0002-multiple-t.md` shows `11 0 0 0`: the file is now identical to `next`.
- Most source/header/test files show `0 0` after the change — fully matched to `next`.
- `src/graph/type_indexededgelist.c` retains `2 2` because an unrelated error-code rename (`IGRAPH_EINVEVECTOR` → `IGRAPH_EINVAL`) belongs to a later changelog entry and was intentionally left.
