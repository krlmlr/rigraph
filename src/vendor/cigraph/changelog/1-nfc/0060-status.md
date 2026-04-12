# igraph_status(), igraph_statusf()

**Category**: Core infrastructure

`igraph_status()`, `igraph_statusf()` and their macro versions (`IGRAPH_STATUS()` and `IGRAPH_STATUSF()`) do not convert error codes to `IGRAPH_INTERRUPTED` any more. Any error code returned from the status handler function is forwarded intact to the caller. If you want to trigger the interruption of the current calculation from the status handler without reporting an error, report `IGRAPH_INTERRUPTED` explicitly. It is the responsibility of higher-level interfaces to handle this error code appropriately.

---

**Original changelog wording:**

> `igraph_status()`, `igraph_statusf()` and their macro versions (`IGRAPH_STATUS()` and `IGRAPH_STATUSF()`) do not convert error codes to `IGRAPH_INTERRUPTED` any more. Any error code returned from the status handler function is forwarded intact to the caller. If you want to trigger the interruption of the current calculation from the status handler without reporting an error, report `IGRAPH_INTERRUPTED` explicitly. It is the responsibility of higher-level interfaces to handle this error code appropriately.
