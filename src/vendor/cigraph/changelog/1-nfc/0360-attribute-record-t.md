# igraph_attribute_record_t

**Category**: Attribute handling

The `value` member of `igraph_attribute_record_t` is now a union that can be used to formally treat the associated pointer as an `igraph_vector_t *`, `igraph_strvector_t *` or `igraph_vector_bool_t *`.

---

**Original changelog wording:**

> The `value` member of `igraph_attribute_record_t` is now a union that can be used to formally treat the associated pointer as an `igraph_vector_t *`, `igraph_strvector_t *` or `igraph_vector_bool_t *`.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0360-attribute-record-t.md
  99   112    78   112  include/igraph_attributes.h
```

Notes on remaining differences:
- `include/igraph_attributes.h`: The 78 remaining additions are from other documentation updates (e.g., copyright header, `__BEGIN_DECLS` → `IGRAPH_BEGIN_C_DECLS`, doc rewrites for `igraph_attribute_type_t`, `igraph_attribute_elemtype_t`, and `igraph_attribute_table_t` members) belonging to later changelog entries. The union struct change was already applied in the port of entry `0320`. The 112 deletions remain as those are removals belonging to other entries. The additions decreased by 21 (from 99 to 78), matching exactly the 21-line documentation block added for `igraph_attribute_record_t`.
- `changelog/1-nfc/0360-attribute-record-t.md`: Diff reduced to zero after adding the file; the proof-of-work section increases `del` in a future comparison since `next` does not have it.
