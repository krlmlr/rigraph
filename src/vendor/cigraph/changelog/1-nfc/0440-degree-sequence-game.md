# igraph_degree_sequence_game()

**Category**: Graph generators

`igraph_degree_sequence_game()` no longer interprets an empty in-degree vector as a request for generating undirected graphs. To generate undirected graphs, pass `NULL` for in-degrees.

---

**Original changelog wording:**

> `igraph_degree_sequence_game()` no longer interprets an empty in-degree vector as a request for generating undirected graphs. To generate undirected graphs, pass `NULL` for in-degrees.
