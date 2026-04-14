# igraph_attribute_type_t

**Category**: Attribute handling

The deprecated `IGRAPH_ATTRIBUTE_DEFAULT` value of the `igraph_attribute_type_t` enum was removed.

---

**Original changelog wording:**

> The deprecated `IGRAPH_ATTRIBUTE_DEFAULT` value of the `igraph_attribute_type_t` enum was removed.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0350-attribute-type-t.md
```

Notes on remaining differences:
The code change (`IGRAPH_ATTRIBUTE_DEFAULT` removal from `igraph_attribute_type_t`) was already present in `main-dev` before this port. Only the changelog file needed to be added. The `del-a` count is 0 because `next` has no proof-of-work section in this file, while `main-dev` does — but this doesn't increase the diff since both counts are 0 after porting.
