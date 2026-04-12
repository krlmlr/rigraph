# igraph_create(), igraph_add_edges()

**Category**: Core infrastructure

The `IGRAPH_EINVEVECTOR` error code was removed; `igraph_create()` and `igraph_add_edges()` that used to return this error code for invalid edge vectors will now return `IGRAPH_EINVAL` instead.

---

**Original changelog wording:**

> The `IGRAPH_EINVEVECTOR` error code was removed; `igraph_create()` and `igraph_add_edges()` that used to return this error code for invalid edge vectors will now return `IGRAPH_EINVAL` instead.
