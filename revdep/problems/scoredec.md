# scoredec (0.1.2)

* GitHub: <https://github.com/cadam00/scoredec>
* Email: <mailto:econp266@econ.soc.uoc.gr>
* GitHub mirror: <https://github.com/cran/scoredec>

Run `revdepcheck::revdep_details(, "scoredec")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library(scoredec)
       > 
       > test_check("scoredec")
       Saving _problems/test-s_coreness-44.R
       Saving _problems/test-s_coreness-105.R
       [ FAIL 2 | WARN 2 | SKIP 0 | PASS 18 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-s_coreness.R:43:3'): s_coreness g and W work double ──────────
       Expected `scoredec::s_coreness(g = g)` to equal `c(3, 1, 5, 2, 4)`.
       Differences:
         `actual`: 3.0 2.0 1.0 4.0 5.0
       `expected`: 3.0 1.0 5.0 2.0 4.0
       
       ── Failure ('test-s_coreness.R:104:3'): s_coreness g and W work integer ────────
       Expected `scoredec::s_coreness(g = g)` to equal `c(4, 3, 2, 2, 1)`.
       Differences:
         `actual`: 3.0 5.0 1.0 4.0 2.0
       `expected`: 4.0 3.0 2.0 2.0 1.0
       
       
       [ FAIL 2 | WARN 2 | SKIP 0 | PASS 18 ]
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

