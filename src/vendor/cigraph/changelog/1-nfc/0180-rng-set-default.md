# igraph_rng_set_default()

**Category**: Random number generation

`igraph_rng_set_default()` now returns a pointer to the previous default RNG. Furthermore, this function now only stores a pointer to the `igraph_rng_t` struct passed to it, instead of copying the struct. Thus the `igraph_rng_t` object must continue to exist for as long as it is used as the default RNG.

---

**Original changelog wording:**

> `igraph_rng_set_default()` now returns a pointer to the previous default RNG. Furthermore, this function now only stores a pointer to the `igraph_rng_t` struct passed to it, instead of copying the struct. Thus the `igraph_rng_t` object must continue to exist for as long as it is used as the default RNG.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
  11     0     0     0  changelog/1-nfc/0180-rng-set-default.md
   1     1     0     0  include/igraph_random.h
  15    15     2     2  src/random/random.c
   1     1     0     0  src/random/rng_pcg32.c
```

Notes on remaining differences:

- `include/igraph_random.h`, `src/random/rng_pcg32.c` fully matched to `next`.
- `src/random/random.c` retains `2/2` for the unrelated `igraph_random_sample_real` → `igraph_i_random_sample_real` rename, which belongs to a later entry.
