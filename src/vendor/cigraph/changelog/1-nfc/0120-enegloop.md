# IGRAPH_ENEGLOOP, IGRAPH_ENEGCYCLE, IGRAPH_ENEGLOOP

**Category**: Core infrastructure

The deprecated error code `IGRAPH_ENEGLOOP` was removed. Use `IGRAPH_ENEGCYCLE` instead. The underlying numerical value is the same as it was for `IGRAPH_ENEGLOOP`.

---

**Original changelog wording:**

> The deprecated error code `IGRAPH_ENEGLOOP` was removed. Use `IGRAPH_ENEGCYCLE` instead. The underlying numerical value is the same as it was for `IGRAPH_ENEGLOOP`.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0120-enegloop.md
   4     6     4     5  include/igraph_error.h
```

Notes on remaining differences:

- `include/igraph_error.h` remaining delta belongs to later entries (EDRL removal and reformatting).
