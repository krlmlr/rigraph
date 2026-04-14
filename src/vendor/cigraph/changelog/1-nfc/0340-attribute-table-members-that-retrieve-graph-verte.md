# Attribute table members that retrieve graph, vertex or edge attributes must n...

**Category**: Attribute handling

Attribute table members that retrieve graph, vertex or edge attributes must not clear the incoming result vector any more; results must be appended to the end of the provided result vector instead.

---

**Original changelog wording:**

> Attribute table members that retrieve graph, vertex or edge attributes must not clear the incoming result vector any more; results must be appended to the end of the provided result vector instead.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0340-attribute-table-members-that-retrieve-graph-verte.md
 132   131    99   112  include/igraph_attributes.h
```

Notes on remaining differences:
- `changelog/...0340...`: The file is now present in `main-dev` (add-after = 0); the `del-after = 0` means `next` has the same content (no proof-of-work section there).
- `include/igraph_attributes.h`: Diff decreased overall (132→99 additions, 131→112 deletions). Remaining differences belong to other changelog entries not yet ported: header comment/copyright changes, `__BEGIN_DECLS`/`__END_DECLS` → `IGRAPH_BEGIN_C_DECLS`/`IGRAPH_END_C_DECLS`, large documentation section removals, and `igraph_attribute_table_t` struct member additions.
