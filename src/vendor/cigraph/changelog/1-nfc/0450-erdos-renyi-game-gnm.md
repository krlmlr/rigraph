# igraph_erdos_renyi_game_gnm(), igraph_iea_game()

**Category**: Graph generators

`igraph_erdos_renyi_game_gnm()` uses a `igraph_edge_type_sw_t allowed_edge_types` parameter instead of `igraph_bool_t loops`, and can now uniformly sample not only simple graphs but also multigraphs. It also gained an `edge_labeled` Boolean parameter which controls whether to sample from the set of ordered edge lists (equivalent to `igraph_iea_game()` for multigraphs).

---

**Original changelog wording:**

> `igraph_erdos_renyi_game_gnm()` uses a `igraph_edge_type_sw_t allowed_edge_types` parameter instead of `igraph_bool_t loops`, and can now uniformly sample not only simple graphs but also multigraphs. It also gained an `edge_labeled` Boolean parameter which controls whether to sample from the set of ordered edge lists (equivalent to `igraph_iea_game()` for multigraphs).
