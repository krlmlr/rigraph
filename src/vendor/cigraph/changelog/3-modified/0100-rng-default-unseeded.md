# Default RNG is now initially unseeded

The `igraph_i_rng_default` global now starts with
`is_seeded = false` instead of `is_seeded = true`. The PCG32
state is populated via `PCG32_INITIALIZER`, a compile-time
constant, so marking it "seeded" was misleading: two processes
would produce the same sequence until the caller explicitly
invoked `igraph_rng_seed()`.

With the flag flipped to `false`, `igraph_setup()` (via its
internal `setup_rng()` helper) now actually picks up a fresh
random seed for the default RNG on the first call, restoring
the documented contract that `igraph_setup()` prepares an
independent RNG state for the process.

Programs that relied on the old deterministic state should
continue to call `igraph_rng_seed()` with an explicit seed to
get reproducible results.

The unused `#include "config.h"` (previously needed for the
`IGRAPH_THREAD_LOCAL` macro) is also removed from
`src/random/rng_pcg32.c`.
