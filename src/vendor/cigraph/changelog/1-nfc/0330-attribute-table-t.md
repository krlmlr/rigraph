# igraph_attribute_table_t

**Category**: Attribute handling

The `gettype` member of `igraph_attribute_table_t` was renamed to `get_type` for consistency with the naming scheme of other struct members.

---

**Original changelog wording:**

> The `gettype` member of `igraph_attribute_table_t` was renamed to `get_type` for consistency with the naming scheme of other struct members.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0330-attribute-table-t.md
 133   132   132   131  include/igraph_attributes.h
```

Notes on remaining differences:
- `changelog/1-nfc/0330-attribute-table-t.md`: The before count (11 add, 0 del) disappears after porting since the file is now present on `main-dev`. The after count is 0/0.
- `include/igraph_attributes.h`: The diff to `next` decreases by 1 line (133→132 add, 132→131 del) as a result of renaming `gettype` to `get_type` in the doc comment. The remaining 132/131 difference corresponds to other unported changes in this header (copyright notice, `__BEGIN_DECLS` → `IGRAPH_BEGIN_C_DECLS`, doc comment rewrites, new `igraph_attribute_elemtype_t` typedef, etc.).
