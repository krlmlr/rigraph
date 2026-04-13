# igraph_attribute_record_t

**Category**: Attribute handling

The `value` member of `igraph_attribute_record_t` is now a union that can be used to formally treat the associated pointer as an `igraph_vector_t *`, `igraph_strvector_t *` or `igraph_vector_bool_t *`.

---

**Original changelog wording:**

> The `value` member of `igraph_attribute_record_t` is now a union that can be used to formally treat the associated pointer as an `igraph_vector_t *`, `igraph_strvector_t *` or `igraph_vector_bool_t *`.
