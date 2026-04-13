# igraph_permute_vertices(), igraph_topological_sorting(), igraph_permute_vertices()

**Category**: Core graph manipulation

The semantics of the `igraph_permute_vertices()` permutation argument has changed: the i-th element of the vector now contains the index of the _original_ vertex that will be mapped to the i-th vertex in the new graph. This is now consistent with how other igraph functions treat permutations and vertex index vectors; for instance, you can now pass the result of `igraph_topological_sorting()` directly to `igraph_permute_vertices()` to obtain a new graph where the vertices are sorted topologically.

---

**Original changelog wording:**

> The semantics of the `igraph_permute_vertices()` permutation argument has changed: the i-th element of the vector now contains the index of the _original_ vertex that will be mapped to the i-th vertex in the new graph. This is now consistent with how other igraph functions treat permutations and vertex index vectors; for instance, you can now pass the result of `igraph_topological_sorting()` directly to `igraph_permute_vertices()` to obtain a new graph where the vertices are sorted topologically.
