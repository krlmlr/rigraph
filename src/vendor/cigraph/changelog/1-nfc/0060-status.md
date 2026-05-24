# igraph_status(), igraph_statusf()

**Category**: Core infrastructure

`igraph_status()`, `igraph_statusf()` and their macro versions (`IGRAPH_STATUS()` and `IGRAPH_STATUSF()`) do not convert error codes to `IGRAPH_INTERRUPTED` any more. Any error code returned from the status handler function is forwarded intact to the caller. If you want to trigger the interruption of the current calculation from the status handler without reporting an error, report `IGRAPH_INTERRUPTED` explicitly. It is the responsibility of higher-level interfaces to handle this error code appropriately.

---

**Original changelog wording:**

> `igraph_status()`, `igraph_statusf()` and their macro versions (`IGRAPH_STATUS()` and `IGRAPH_STATUSF()`) do not convert error codes to `IGRAPH_INTERRUPTED` any more. Any error code returned from the status handler function is forwarded intact to the caller. If you want to trigger the interruption of the current calculation from the status handler without reporting an error, report `IGRAPH_INTERRUPTED` explicitly. It is the responsibility of higher-level interfaces to handle this error code appropriately.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0060-status.md
```

Notes on remaining differences:

- `include/igraph_statusbar.h` and `src/core/statusbar.c` were already fully in sync with `next` on `main-dev` before this change — the code side of this policy change had been absorbed earlier. Only the changelog entry needed to be ported.
