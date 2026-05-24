# igraph_setup()

**Category**: Core infrastructure

`igraph_setup()` is now recommended to be called before using the library. This function may gain essential functions in the future. See the "Added" section below for details.

---

**Original changelog wording:**

> `igraph_setup()` is now recommended to be called before using the library. This function may gain essential functions in the future. See the "Added" section below for details.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0140-setup.md
   1     0     0     0  include/igraph.h
  31     0     0     0  include/igraph_setup.h
   2     0     1     0  src/CMakeLists.txt
  67     0    26     0  src/core/setup.c
   8     0     1     0  tests/CMakeLists.txt
  44     0     0     0  tests/unit/igraph_setup.c
   3     0     0     0  tests/unit/igraph_setup.out
```

Notes on remaining differences:

- Most files fully match `next`.
- `src/core/setup.c` retains `26/0`: the function body on `next` also seeds the default RNG via `igraph_i_get_random_seed()` and `rng->is_seeded`. That helper is introduced by a later entry (0170 setup-rng-begin), so here we ship a minimal stub that returns `IGRAPH_SUCCESS`. It will be filled in when that entry is ported.
- `src/CMakeLists.txt` retains `1/0` for one unrelated line (will be resolved by a later entry).
- `tests/CMakeLists.txt` retains `1/0` for a sibling test addition (`igraph_arpack_error`) that belongs to a later entry.
