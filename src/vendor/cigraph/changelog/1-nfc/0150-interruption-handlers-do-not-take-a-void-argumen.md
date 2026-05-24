# void *

**Category**: Core infrastructure

Interruption handlers do not take a `void *` argument anymore; this is relevant to maintainers of higher-level interfaces only.

---

**Original changelog wording:**

> Interruption handlers do not take a `void *` argument anymore; this is relevant to maintainers of higher-level interfaces only.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0150-interruption-handlers-do-not-take-a-void-argumen.md
   7     7     0     0  include/igraph_interrupt.h
   4     4     1     1  src/core/interruption.c
   4     5     3     4  src/core/interruption.h
  11    13     9    11  src/internal/glpk_support.c
   1     1     0     0  src/isomorphism/bliss.cc
```

Notes on remaining differences:

- `include/igraph_interrupt.h`, `src/isomorphism/bliss.cc` are now fully matched to `next`.
- `src/core/interruption.c`, `src/core/interruption.h` retain tiny deltas for unrelated formatting hunks belonging to later entries.
- `src/internal/glpk_support.c` retains `9/11` for unrelated GLPK-specific hunks from later entries.
