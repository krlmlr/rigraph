# igraph_delete_vertices_map(), igraph_delete_vertices_idx(), igraph_induced_subgraph_map()

**Category**: Core graph manipulation

`igraph_delete_vertices_map()` (formerly called `igraph_delete_vertices_idx()`) and `igraph_induced_subgraph_map()` now use `-1` to represent unmapped vertices in the returned forward mapping vector and they do not offset vertex indices by 1 any more. Note that the inverse map always behaved this way, this change makes the two mappings consistent.

---

**Original changelog wording:**

> `igraph_delete_vertices_map()` (formerly called `igraph_delete_vertices_idx()`) and `igraph_induced_subgraph_map()` now use `-1` to represent unmapped vertices in the returned forward mapping vector and they do not offset vertex indices by 1 any more. Note that the inverse map always behaved this way, this change makes the two mappings consistent.
