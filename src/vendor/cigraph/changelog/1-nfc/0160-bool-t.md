# igraph_bool_t

**Category**: Core infrastructure

Interruption handlers now return an `igraph_bool_t` instead of an `igraph_error_t`; the returned value must be true if the calculation has to be interrupted and false otherwise.

---

**Original changelog wording:**

> Interruption handlers now return an `igraph_bool_t` instead of an `igraph_error_t`; the returned value must be true if the calculation has to be interrupted and false otherwise.
