# IGRAPH_ELAPACK, IGRAPH_FAILURE

**Category**: Core infrastructure

The `IGRAPH_ELAPACK` error code was removed; functions that used this error code now return `IGRAPH_FAILURE` instead, providing more details in the message associated to the error code.

---

**Original changelog wording:**

> The `IGRAPH_ELAPACK` error code was removed; functions that used this error code now return `IGRAPH_FAILURE` instead, providing more details in the message associated to the error code.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0090-elapack.md
   8    16     7    14  include/igraph_error.h
  23    16    23    16  src/core/error.c
  30    30     0     0  src/linalg/lapack.c
```

Notes on remaining differences:

- `src/linalg/lapack.c` now fully matched to `next`.
- `include/igraph_error.h`/`src/core/error.c` retain deltas for other unrelated removed codes (EDIVZERO, EDRL, CPUTIME, EATTRIBUTES) belonging to later entries.
