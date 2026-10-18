# annoLinker (1.0.0)

* GitHub: <https://github.com/jianhong/annoLinker>
* Email: <mailto:jou@morgridge.org>
* GitHub mirror: <https://github.com/cran/annoLinker>

Run `revdepcheck::revdep_details(, "annoLinker")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > require("future") || stop("unable to load future")
       Loading required package: future
       
       Attaching package: 'future'
       
       The following objects are masked from 'package:igraph':
       
           %->%, %<-%
       
       [1] TRUE
       > test_check("annoLinker")
       Saving _problems/test_utilities-195.R
       [ FAIL 1 | WARN 1 | SKIP 0 | PASS 30 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test_utilities.R:192:5'): build_interaction_graph or detect_clusters works not correct ──
       Expected `res[[4]]$clusters` to equal `res[[2]]$clusters`.
       Differences:
       Component "cluster_id": Mean relative difference: 0.2894737
       Component "cluster_size": Mean relative difference: 0.3243243
       
       [ FAIL 1 | WARN 1 | SKIP 0 | PASS 30 ]
       Error:
       ! Test failures.
       Execution halted
     ```

