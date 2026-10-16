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

