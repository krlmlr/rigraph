# igraph_topology.h

**Category**: Build system and compiler

The sub-header `igraph_topology.h` was renamed to `igraph_isomorphism.h`.

---

**Original changelog wording:**

> The sub-header `igraph_topology.h` was renamed to `igraph_isomorphism.h`.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0010-the-sub-header-igraphtopology-h-was-renamed-to-igr.md
   2     1     1     0  include/igraph.h
   0     0     0     0  include/igraph_isomorphism.h
   0     0     0     0  include/igraph_topology.h
   1     5     0     4  src/centrality/eigenvector.c
   1     1     0     0  src/flow/flow.c
   1     1     0     0  src/flow/st-cuts.c
   2     2     1     1  src/isomorphism/bliss.cc
   1     1     0     0  src/isomorphism/isoclasses.c
   1     1     0     0  src/isomorphism/isomorphism_misc.c
   1     6     0     5  src/isomorphism/lad.c
   1     1     0     0  src/isomorphism/queries.c
   1     1     0     0  src/isomorphism/vf2.c
   1     1     0     0  src/misc/feedback_arc_set.c
   1     1     0     0  src/operators/permute.c
   1     1     0     0  src/properties/dag.c
   1     1     0     0  src/properties/perfect.c
   1     1     0     0  src/properties/rich_club.c
   1     1     0     0  src/properties/trees.c
```

Notes on remaining differences:

- The changelog file shows `11 0 0 0` — now identical to `next`.
- `include/igraph.h` retains `1 0`: the removal of `#include "igraph_setup.h"` belongs to a later changelog entry.
- `src/centrality/eigenvector.c`, `src/isomorphism/lad.c`, `src/isomorphism/bliss.cc` retain non-zero deltas for unrelated hunks belonging to later entries.
- All other files are fully matched to `next` after the rename and include updates.
