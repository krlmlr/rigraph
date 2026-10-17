# netrics (1.1.0)

* GitHub: <https://github.com/stocnet/netrics>
* Email: <mailto:james.hollway@graduateinstitute.ch>
* GitHub mirror: <https://github.com/cran/netrics>

Run `revdepcheck::revdep_details(, "netrics")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected the warnings raised to match regexp "communities".
       Actual text:
       x | 
       Backtrace:
           ▆
        1. ├─testthat::expect_s3_class(...) at test-member_community.R:65:3
        2. │ └─testthat::quasi_label(enquo(object))
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─netrics:::expect_snet_warn(...)
        5.   └─testthat::expect_match(...) at ./helper-netrics.R:28:3
       ── Failure ('test-shapes.R:48:3'): node_by_hub() and node_by_authority() do not warn when signed ──
       Expected `node_by_hub(signed_multilevel)` not to throw any warnings.
       Actually got a <simpleWarning> with message:
         Hub and authority scores requested for undirected graph. These are the same as eigenvector centralities.
         Source: centrality/hub_authority.c:294
       ── Failure ('test-shapes.R:49:3'): node_by_hub() and node_by_authority() do not warn when signed ──
       Expected `node_by_authority(signed_multilevel)` not to throw any warnings.
       Actually got a <simpleWarning> with message:
         Hub and authority scores requested for undirected graph. These are the same as eigenvector centralities.
         Source: centrality/hub_authority.c:294
       
       [ FAIL 5 | WARN 67 | SKIP 39 | PASS 4810 ]
       Error:
       ! Test failures.
       Execution halted
     ```

