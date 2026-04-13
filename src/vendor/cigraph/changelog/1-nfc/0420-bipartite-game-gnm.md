# igraph_bipartite_game_gnm(), igraph_bipartite_iea_game()

**Category**: Graph generators

`igraph_bipartite_game_gnm()` gained an `igraph_edge_type_sw_t allowed_edge_types` parameter, and can now uniformly sample not only simple graphs but also multigraphs. It also gained an `edge_labeled` Boolean parameter which controls whether to sample from the set of ordered edge lists (equivalent to `igraph_bipartite_iea_game()` for multigraphs).

---

**Original changelog wording:**

> `igraph_bipartite_game_gnm()` gained an `igraph_edge_type_sw_t allowed_edge_types` parameter, and can now uniformly sample not only simple graphs but also multigraphs. It also gained an `edge_labeled` Boolean parameter which controls whether to sample from the set of ordered edge lists (equivalent to `igraph_bipartite_iea_game()` for multigraphs).
