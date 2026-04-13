# igraph_erdos_renyi_game_gnp()

**Category**: Graph generators

`igraph_erdos_renyi_game_gnp()` uses a `igraph_edge_type_sw_t allowed_edge_types` parameter instead of `igraph_bool_t loops`, and can now sample multigraphs from a maximum entropy model with a prescribed _expected_ edge multiplicity. It also gained an `edge_labeled` Boolean parameter which controls whether to sample from the set of ordered edge lists.

---

**Original changelog wording:**

> `igraph_erdos_renyi_game_gnp()` uses a `igraph_edge_type_sw_t allowed_edge_types` parameter instead of `igraph_bool_t loops`, and can now sample multigraphs from a maximum entropy model with a prescribed _expected_ edge multiplicity. It also gained an `edge_labeled` Boolean parameter which controls whether to sample from the set of ordered edge lists.
