# eigen_centrality() deprecated scale argument

    Code
      invisible(eigen_centrality(g, scale = TRUE))
    Condition
      Warning:
      The `scale` argument of `eigen_centrality()` is deprecated as of igraph 2.1.1.
      i eigen_centrality() will always behave as if scale=TRUE were used.

---

    Code
      invisible(eigen_centrality(g, scale = FALSE))
    Condition
      Error:
      ! The `scale` argument of `eigen_centrality()` always as if TRUE as of igraph 2.1.1.
      i Normalization is always performed

# arpack() errors well

    Code
      arpack(f, options = list(nev = 2, ncv = 4), sym = TRUE)
    Condition
      Error in `arpack()`:
      ! N must be positive. ARPACK error
      Source: <file>:<line>

---

    Code
      arpack(f, options = list(unknown_thing1 = 2, unknown_thing2 = 4), sym = TRUE)
    Condition
      Error in `arpack()`:
      ! Can't use unkown ARPACK options: unknown_thing1, unknown_thing2

