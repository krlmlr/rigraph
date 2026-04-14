# igraph_permute_vertices() and 3 others

**Category**: Core graph manipulation

As a consequence to the change in the semantics of the `igraph_permute_vertices()` permutation argument, the semantics of the permutations returned from `igraph_canonical_permutation()` and `igraph_canonical_permutation_bliss()` have also been inverted to maintain the invariant that the output of these functions can be fed into `igraph_permute_vertices()` directly.

---

**Original changelog wording:**

> As a consequence to the change in the semantics of the `igraph_permute_vertices()` permutation argument, the semantics of the permutations returned from `igraph_canonical_permutation()` and `igraph_canonical_permutation_bliss()` have also been inverted to maintain the invariant that the output of these functions can be fed into `igraph_permute_vertices()` directly.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0370-permute-vertices.md
  12    16     0     0  src/operators/permute.c
 154    19   133    21  src/isomorphism/bliss.cc
   1     1     0     0  tests/unit/igraph_permute_vertices.c
   5     2     1     1  tests/unit/igraph_isomorphic_vf2.c
   9     6     5     5  examples/simple/igraph_isomorphic_vf2.c
  17     9     7     6  tests/unit/igraph_maximal_cliques.c
```

Notes on remaining differences:
- `src/isomorphism/bliss.cc` (133 add / 21 del remaining): The large remaining diff belongs to entry `0680-canonical-permutation.md`, which renames `igraph_canonical_permutation()` to `igraph_canonical_permutation_bliss()`, adds a new simpler `igraph_canonical_permutation()` wrapper, renames `igraph_count_automorphisms()` to `igraph_count_automorphisms_bliss()`, adds a new `igraph_count_automorphisms()`, and adds `igraph_automorphism_group()`. Also includes unrelated NFC changes (AbortChecker comparison fix, `<cmath>` include for `strtod`).
- `tests/unit/igraph_isomorphic_vf2.c` (1 add / 1 del): License header change ("IGraph" → "igraph"), part of a future NFC entry.
- `examples/simple/igraph_isomorphic_vf2.c` (5 add / 5 del): Remaining changes include `igraph_setup()` call, `igraph_int_t` type rename, and comment wording — belonging to future entries.
- `tests/unit/igraph_maximal_cliques.c` (7 add / 6 del): Remaining differences are `IGRAPH_UNLIMITED` constant, `IGRAPH_SIMPLE_SW`/`IGRAPH_EDGE_UNLABELED` API change in `igraph_erdos_renyi_game_gnm`, and `RNG_INTEGER` macro — all belonging to future entries.
