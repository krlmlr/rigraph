# IGRAPH_NONSQUARE, IGRAPH_EINVAL

**Category**: Core infrastructure

The `IGRAPH_NONSQUARE` error code was removed; functions that used this error code now return `IGRAPH_EINVAL` instead when encountering a non-square matrix.

---

**Original changelog wording:**

> The `IGRAPH_NONSQUARE` error code was removed; functions that used this error code now return `IGRAPH_EINVAL` instead when encountering a non-square matrix.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0070-nonsquare.md
  17    36    17    34  include/igraph_error.h
   6     6     0     0  src/constructors/adjacency.c
  24    17    24    17  src/core/error.c
  11    11     0     0  src/core/sparsemat.c
   1     7     0     6  src/games/sbm.c
   2     2     0     0  src/linalg/eigen.c
  36    36    30    30  src/linalg/lapack.c
   1     1     0     0  tests/unit/igraph_adjacency.c
   1     1     0     0  tests/unit/igraph_lapack_dgetrs.c
   1     1     0     0  tests/unit/igraph_sbm_game.c
   2     2     0     0  tests/unit/igraph_weighted_adjacency.c
```

Notes on remaining differences:

- `changelog/1-nfc/0070-nonsquare.md` now identical to `next`.
- `include/igraph_error.h`/`src/core/error.c` still have deltas for other removed error codes (GLPK, ELAPACK, EDIVZERO, EGLP, CPUTIME, EATTRIBUTES, EDRL) handled in later entries, and for the slot-8 rename to `IGRAPH_EINVEID` which belongs to a later entry (here we simply comment out slot 8 / the old NONSQUARE string).
- `src/linalg/lapack.c` retains `30/30` for lapack-specific rewrites unrelated to this error-code removal.
- `src/games/sbm.c` retains `0/6` for unrelated hunks.
- Other files are fully matched.
