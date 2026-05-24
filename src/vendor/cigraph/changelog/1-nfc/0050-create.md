# igraph_create(), igraph_add_edges()

**Category**: Core infrastructure

The `IGRAPH_EINVEVECTOR` error code was removed; `igraph_create()` and `igraph_add_edges()` that used to return this error code for invalid edge vectors will now return `IGRAPH_EINVAL` instead.

---

**Original changelog wording:**

> The `IGRAPH_EINVEVECTOR` error code was removed; `igraph_create()` and `igraph_add_edges()` that used to return this error code for invalid edge vectors will now return `IGRAPH_EINVAL` instead.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0050-create.md
  18    39    17    36  include/igraph_error.h
   3     5     2     4  src/constructors/basic_constructors.c
  25    18    24    17  src/core/error.c
   2     2     0     0  src/graph/type_indexededgelist.c
   2     6     2     6  src/misc/bipartite.c
   1     1     0     0  tests/unit/igraph_add_edges.c
   2     2     0     0  tests/unit/igraph_create.c
```

Notes on remaining differences:

- `changelog/1-nfc/0050-create.md` now identical to `next`.
- Files fully matched: `src/graph/type_indexededgelist.c`, `tests/unit/igraph_add_edges.c`, `tests/unit/igraph_create.c`.
- `include/igraph_error.h` / `src/core/error.c` retain their deltas for other error code removals (NONSQUARE → EINVEID, GLPK errors, ELAPACK, etc.) belonging to later entries.
- `src/constructors/basic_constructors.c` retains `2/4` for unrelated hunks in later entries.
- `src/misc/bipartite.c` retains `2/6` for unrelated hunks in later entries.
