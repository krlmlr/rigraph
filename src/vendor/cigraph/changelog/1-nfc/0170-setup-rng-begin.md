# RNG_BEGIN(), RNG_END()

**Category**: Random number generation

The `RNG_BEGIN()` and `RNG_END()` macros were removed. You are now responsible for seeding the RNG before using any igraph function that may use random numbers by calling `igraph_rng_seed(igraph_rng_default(), ...)`, or by simply ensuring that `igraph_setup()` was called before the first use of the library.

---

**Original changelog wording:**

> The `RNG_BEGIN()` and `RNG_END()` macros were removed. You are now responsible for seeding the RNG before using any igraph function that may use random numbers by calling `igraph_rng_seed(igraph_rng_default(), ...)`, or by simply ensuring that `igraph_setup()` was called before the first use of the library.
