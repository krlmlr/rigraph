# wdnet (1.2.4)

* Email: <mailto:yelie.yuan@gmail.com>
* GitHub mirror: <https://github.com/cran/wdnet>

Run `revdepcheck::revdep_details(, "wdnet")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Component "assortcoef": Component "outin": Mean relative difference: 0.07398271
       Component "assortcoef": Component "inout": Mean relative difference: 0.2124229
       Component "assortcoef": Component "inin": Mean relative difference: 1.189848
       Component "netwk": Component "edgelist": Mean relative difference: 0.8303969
       Backtrace:
           ▆
        1. └─wdnet (local) my_expect_true(nstep = nstep, control = control, directed = TRUE) at test-rewire.R:108:3
        2.   └─testthat::expect_equal(ret1, ret2) at test-rewire.R:98:5
       ── Failure ('test-rewire.R:100:5'): rewire ─────────────────────────────────────
       Expected `ret1` to equal `ret4`.
       Differences:
       Component "assortcoef": Component "outout": Mean relative difference: 0.04105655
       Component "assortcoef": Component "outin": Mean relative difference: 0.07398271
       Component "assortcoef": Component "inout": Mean relative difference: 0.2124229
       Component "assortcoef": Component "inin": Mean relative difference: 1.189848
       Component "netwk": Component "edgelist": Mean relative difference: 0.8303969
       Backtrace:
           ▆
        1. └─wdnet (local) my_expect_true(nstep = nstep, control = control, directed = TRUE) at test-rewire.R:108:3
        2.   └─testthat::expect_equal(ret1, ret4) at test-rewire.R:100:5
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 85 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

