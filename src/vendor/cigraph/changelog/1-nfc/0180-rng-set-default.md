# igraph_rng_set_default()

**Category**: Random number generation

`igraph_rng_set_default()` now returns a pointer to the previous default RNG. Furthermore, this function now only stores a pointer to the `igraph_rng_t` struct passed to it, instead of copying the struct. Thus the `igraph_rng_t` object must continue to exist for as long as it is used as the default RNG.

---

**Original changelog wording:**

> `igraph_rng_set_default()` now returns a pointer to the previous default RNG. Furthermore, this function now only stores a pointer to the `igraph_rng_t` struct passed to it, instead of copying the struct. Thus the `igraph_rng_t` object must continue to exist for as long as it is used as the default RNG.
