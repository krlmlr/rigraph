# RNG_BEGIN(), RNG_END()

**Category**: Random number generation

The `RNG_BEGIN()` and `RNG_END()` macros were removed. You are now responsible for seeding the RNG before using any igraph function that may use random numbers by calling `igraph_rng_seed(igraph_rng_default(), ...)`, or by simply ensuring that `igraph_setup()` was called before the first use of the library.

---

**Original changelog wording:**

> The `RNG_BEGIN()` and `RNG_END()` macros were removed. You are now responsible for seeding the RNG before using any igraph function that may use random numbers by calling `igraph_rng_seed(igraph_rng_default(), ...)`, or by simply ensuring that `igraph_setup()` was called before the first use of the library.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0170-setup-rng-begin.md
   0     2     0     0  examples/simple/igraph_sparsemat3.c
   0     2     0     0  examples/simple/igraph_sparsemat4.c
   1    19     1     1  include/igraph_random.h
   1     0     0     0  src/CMakeLists.txt
   0     4     0     0  src/centrality/eigenvector.c
   0     2     0     0  src/centrality/hub_authority.c
   0     2     0     0  src/centrality/pagerank.c
   0     2     0     0  src/community/fluid.c
   0     2     0     0  src/community/infomap/infomap_Greedy.cc
   0     2     0     0  src/community/label_propagation.c
   1     3     1     1  src/community/leading_eigenvector.c
   0     2     0     0  src/community/leiden.c
   0     2     0     0  src/community/louvain.c
   0     6     0     0  src/community/spinglass/clustertool.cpp
  26     0     0     0  src/core/setup.c
   0     2     0     0  src/core/vector.pmt
   0     8     0     0  src/games/barabasi.c
   0     2     0     0  src/games/callaway_traits.c
   0     2     0     0  src/games/chung_lu.c
   0     6     0     0  src/games/citations.c
   0     2     0     0  src/games/correlated.c
   0    12     0     0  src/games/degree_sequence.c
   0     4     0     0  src/games/degree_sequence_vl/gengraph_mr-connected.cpp
   0     8     0     0  src/games/dotproduct.c
   1     5     1     1  src/games/erdos_renyi.c
   0     2     0     0  src/games/establishment.c
   0     2     0     0  src/games/forestfire.c
   0     2     0     0  src/games/grg.c
   0     2     0     0  src/games/growing_random.c
   1     3     1     1  src/games/islands.c
   0     4     0     0  src/games/preference.c
   0     4     0     0  src/games/recent_degree.c
   0     6     0     0  src/games/sbm.c
   0     2     0     0  src/games/static_fitness.c
   0     4     0     0  src/games/tree.c
   0     8     0     0  src/graph/cattributes.c
   0    10     0     0  src/hrg/hrg.cc
   0     2     0     0  src/layout/davidson_harel.c
   0     2     0     0  src/layout/drl/drl_layout.cpp
   0     2     0     0  src/layout/drl/drl_layout_3d.cpp
   0     6     0     0  src/layout/fruchterman_reingold.c
   0     2     0     0  src/layout/gem.c
   0     2     0     0  src/layout/large_graph.c
   0     8     0     0  src/layout/layout_random.c
   0     2     0     0  src/layout/mds.c
   0     2     0     0  src/layout/merge_dla.c
   0     2     0     0  src/layout/umap.c
   0     4     0     0  src/linalg/arpack.c
   2     6     2     2  src/misc/bipartite.c
   0     2     0     0  src/misc/conversion.c
   0     2     0     0  src/misc/embedding.c
   0    12     0     0  src/misc/microscopic_update.c
   0     6     0     0  src/misc/motifs.c
   0     4     0     0  src/misc/power_law_fit.c
   0     2     0     0  src/misc/sir.c
   0     2     0     0  src/misc/spanning_trees.c
   0     3     0     0  src/operators/rewire.c
   0     4     0     0  src/operators/rewire_edges.c
   0     4     0     0  src/paths/distances.c
   0     4     0     0  src/paths/random_walk.c
   0     2     0     0  src/paths/sparsifier.c
   0     4     0     0  src/paths/voronoi.c
  15    19    15    15  src/random/random.c
  43     0    14     0  src/random/random_device.cpp
   3     1     1     1  src/random/random_internal.h
   0    12     0     0  tests/benchmarks/igraph_distances.c
   0     2     0     0  tests/benchmarks/igraph_layout_umap.c
   0     2     0     0  tests/benchmarks/igraph_matrix_transpose.c
   0     4     0     0  tests/benchmarks/igraph_power_law_fit.c
   0     2     0     0  tests/benchmarks/igraph_qsort.c
   0     8     0     0  tests/benchmarks/igraph_voronoi.c
   0     2     0     0  tests/unit/2wheap.c
   0     4     0     0  tests/unit/coreness.c
   0     2     0     0  tests/unit/igraph_i_layout_sphere.c
   0     2     0     0  tests/unit/igraph_i_umap_fit_ab.c
   0     2     0     0  tests/unit/igraph_is_forest2.c
   0     2     0     0  tests/unit/igraph_layout_mds.c
   0     2     0     0  tests/unit/igraph_psumtree.c
   0     2     0     0  tests/unit/igraph_sparsemat2.c
   0     2     0     0  tests/unit/igraph_to_prufer.c
   0     2     0     0  tests/unit/isomorphism_test.c
   0     2     0     0  vendor/cs/cs_randperm.c
```

Notes on remaining differences:

- The RNG_BEGIN()/RNG_END() calls were removed from ~75 source files and the two affected examples; the macros themselves were removed from `include/igraph_random.h`.
- `src/core/setup.c` is filled in to seed the RNG via the new `igraph_i_get_random_seed()` helper (now fully matched to `next`).
- `src/random/random_device.cpp` is added with the random seed implementation; `src/random/random_internal.h` exposes the helper.
- Unrelated later-entry hunks in a few files (notably `infomap_Greedy.cc`, `clustertool.cpp`, `random.c`, `walktrap.cpp`) remain and will be ported in subsequent entries.
