# IGRAPH_NONSQUARE, IGRAPH_EINVAL

**Category**: Core infrastructure

The `IGRAPH_NONSQUARE` error code was removed; functions that used this error code now return `IGRAPH_EINVAL` instead when encountering a non-square matrix.

---

**Original changelog wording:**

> The `IGRAPH_NONSQUARE` error code was removed; functions that used this error code now return `IGRAPH_EINVAL` instead when encountering a non-square matrix.
