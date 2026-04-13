# igraph_permute_vertices() and 3 others

**Category**: Core graph manipulation

As a consequence to the change in the semantics of the `igraph_permute_vertices()` permutation argument, the semantics of the permutations returned from `igraph_canonical_permutation()` and `igraph_canonical_permutation_bliss()` have also been inverted to maintain the invariant that the output of these functions can be fed into `igraph_permute_vertices()` directly.

---

**Original changelog wording:**

> As a consequence to the change in the semantics of the `igraph_permute_vertices()` permutation argument, the semantics of the permutations returned from `igraph_canonical_permutation()` and `igraph_canonical_permutation_bliss()` have also been inverted to maintain the invariant that the output of these functions can be fed into `igraph_permute_vertices()` directly.
