# manynet (2.4.0)

* GitHub: <https://github.com/stocnet/manynet>
* Email: <mailto:james.hollway@graduateinstitute.ch>
* GitHub mirror: <https://github.com/cran/manynet>

Run `revdepcheck::revdep_details(, "manynet")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─manynet:::check_tute_functions(tute)
        5.   └─testthat::expect_null(...) at ./helper-manynet.R:233:5
       ── Failure ('test-coercion.R:28:7'): coercion from stocnet to other classes is lossless where expected ──
       Expected `lossless_roundtrip(obj, to)` to be TRUE.
       Differences:
       `actual`:   FALSE
       `expected`: TRUE 
       
       Lossy coercion: stocnet (obj) → network (obj2)
       
       [ FAIL 9 | WARN 1336 | SKIP 108 | PASS 7572 ]
       Error:
       ! Test failures.
       Warning messages:
       1: Calling `make_ring()` with positional or abbreviated arguments was deprecated
       in igraph 3.0.0.
       ℹ Detected call: make_ring(n, directed)
       ℹ Use instead: make_ring(n, directed = ) 
       2: The `attr` argument of `as_adjacency_matrix()` is deprecated as of igraph
       3.0.0.
       ℹ Please use the `weights` argument instead.
       ℹ `attr = NULL` becomes `weights = NA`, not `weights = NULL`. 
       Execution halted
     ```

