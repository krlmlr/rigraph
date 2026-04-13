# igraph_adjlist_init_complementer() and 6 others

**Category**: Basic graph properties

The type of the `loops` argument of `igraph_adjlist_init_complementer()`, `igraph_centralization_degree()`, `igraph_centralization_degree_tmax()`, `igraph_degree()`, `igraph_maxdegree()`, `igraph_sort_vertex_ids_by_degree()` and `igraph_strength()` was changed to `igraph_loops_t` from `igraph_bool_t`, allowing finer-grained control about how loop edges are treated. Pass `IGRAPH_LOOPS_TWICE` and `IGRAPH_NO_LOOPS` to reproduce the previous behaviour of `true` and `false`.

---

**Original changelog wording:**

> The type of the `loops` argument of `igraph_adjlist_init_complementer()`, `igraph_centralization_degree()`, `igraph_centralization_degree_tmax()`, `igraph_degree()`, `igraph_maxdegree()`, `igraph_sort_vertex_ids_by_degree()` and `igraph_strength()` was changed to `igraph_loops_t` from `igraph_bool_t`, allowing finer-grained control about how loop edges are treated. Pass `IGRAPH_LOOPS_TWICE` and `IGRAPH_NO_LOOPS` to reproduce the previous behaviour of `true` and `false`.
