# IGRAPH_EINVEID

**Category**: Core infrastructure

A new error code called `IGRAPH_EINVEID` was added for cases when an invalid edge ID was encountered in an edge ID vector.

---

**Original changelog wording:**

> A new error code called `IGRAPH_EINVEID` was added for cases when an invalid edge ID was encountered in an edge ID vector.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0130-einveid.md
   4     5     2     4  include/igraph_error.h
  23    16    22    15  src/core/error.c
   4     4     0     0  src/graph/iterators.c
   1     1     0     0  src/graph/type_common.c
   9     9     0     0  tests/unit/edge_selectors.c
   1     1     0     0  tests/unit/igraph_is_mutual.c
```

Notes on remaining differences:

- `src/graph/iterators.c`, `src/graph/type_common.c`, `tests/unit/edge_selectors.c`, `tests/unit/igraph_is_mutual.c` are fully matched to `next`.
- `include/igraph_error.h` and `src/core/error.c` retain deltas for later entries (EDRL removal, other reformatting).
