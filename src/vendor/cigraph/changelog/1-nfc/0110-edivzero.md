# IGRAPH_EDIVZERO, IGRAPH_EATTRIBUTES

**Category**: Core infrastructure

The unused `IGRAPH_EDIVZERO` and `IGRAPH_EATTRIBUTES` error codes were removed with no replacement.

---

**Original changelog wording:**

> The unused `IGRAPH_EDIVZERO` and `IGRAPH_EATTRIBUTES` error codes were removed with no replacement.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0110-edivzero.md
   6    12     4     6  include/igraph_error.h
  23    16    23    16  src/core/error.c
```

Notes on remaining differences:

- `include/igraph_error.h`/`src/core/error.c` retain deltas for the other unrelated removed codes (EDRL, ENEGLOOP-rewording, etc.) handled in later entries.
