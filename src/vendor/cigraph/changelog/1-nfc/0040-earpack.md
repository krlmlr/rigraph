# IGRAPH_EARPACK

**Category**: Core infrastructure

ARPACK-specific error codes (starting with `IGRAPH_ARPACK_...`) were replaced with a single `IGRAPH_EARPACK` error code. Details about the underlying ARPACK failure are provided in the error message.

---

**Original changelog wording:**

> ARPACK-specific error codes (starting with `IGRAPH_ARPACK_...`) were replaced with a single `IGRAPH_EARPACK` error code. Details about the underlying ARPACK failure are provided in the error message.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0040-earpack.md
  64     0     0     0  include/igraph_arpack.h
  24    86    18    39  include/igraph_error.h
  10     6     1     3  src/community/leading_eigenvector.c
  57    47    25    18  src/core/error.c
 177    98     0     4  src/linalg/arpack.c
```

Notes on remaining differences:

- `changelog/1-nfc/0040-earpack.md` and `include/igraph_arpack.h` fully match `next`.
- `include/igraph_error.h` retains `18/39` because other error-code changes (EINVEVECTOR, NONSQUARE → EINVEID, removals of GLP_*, EDIVZERO, ELAPACK, EDRL, EGLP, CPUTIME, EATTRIBUTES) belong to later changelog entries and were intentionally left in place.
- `src/community/leading_eigenvector.c` retains `1/3` for an unrelated RNG_BEGIN/END removal and 0/NULL cleanup from later entries.
- `src/core/error.c` retains `25/18` for the same GLPK/ELAPACK/etc. removals listed above.
- `src/linalg/arpack.c` retains `0/4` for the unrelated RNG_BEGIN/END removal (2 pairs = 4 lines) that belongs to a later RNG-related changelog entry.
