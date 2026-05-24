# IGRAPH_CPUTIME

**Category**: Core infrastructure

The `IGRAPH_CPUTIME` error code was removed in favour of the interruption mechanism built into igraph.

---

**Original changelog wording:**

> The `IGRAPH_CPUTIME` error code was removed in favour of the interruption mechanism built into igraph.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0100-cputime.md
   7    14     6    12  include/igraph_error.h
  23    16    23    16  src/core/error.c
   0     5     0     0  src/isomorphism/lad.c
```

Notes on remaining differences:

- `src/isomorphism/lad.c` fully matched — the CPU-time check block was deleted.
- `include/igraph_error.h`/`src/core/error.c` retain deltas for other unrelated removed codes (EDIVZERO, EDRL, EATTRIBUTES) belonging to later entries.
