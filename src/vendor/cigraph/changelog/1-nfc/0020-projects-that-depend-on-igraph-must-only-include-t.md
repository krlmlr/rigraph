# <igraph.h>

**Category**: Build system and compiler

Projects that depend on igraph must only include the `<igraph.h>` header. While an igraph installation includes several sub-headers, these are for organizational purposes only, and their contents may change without notice. Only `#include <igraph.h>` is supported.

---

**Original changelog wording:**

> Projects that depend on igraph must only include the `<igraph.h>` header. While an igraph installation includes several sub-headers, these are for organizational purposes only, and their contents may change without notice. Only `#include <igraph.h>` is supported.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0020-projects-that-depend-on-igraph-must-only-include-t.md
```

Notes on remaining differences:

- This entry is documentation-only. It states a policy (single-header inclusion) and does not require code changes.
- The changelog file is now identical to `next` (`11 0 0 0`).
