# igraph_bool_t

**Category**: Core infrastructure

Interruption handlers now return an `igraph_bool_t` instead of an `igraph_error_t`; the returned value must be true if the calculation has to be interrupted and false otherwise.

---

**Original changelog wording:**

> Interruption handlers now return an `igraph_bool_t` instead of an `igraph_error_t`; the returned value must be true if the calculation has to be interrupted and false otherwise.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0160-bool-t.md
```

Notes on remaining differences:

- This entry's code change was already applied together with entry 0150 (interruption handlers dropping the `void *` argument); both changes touch the same typedef and call sites. Only the changelog file needed to be ported here.
