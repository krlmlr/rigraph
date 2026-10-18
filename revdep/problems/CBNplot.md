# CBNplot (1.12.0)

* GitHub: <https://github.com/noriakis/CBNplot>
* Email: <mailto:nori@hgc.jp>
* GitHub mirror: <https://github.com/cran/CBNplot>

Run `revdepcheck::revdep_details(, "CBNplot")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > ### Title: bngeneplot
     > ### Aliases: bngeneplot
     > 
     > ### ** Examples
     > 
     > data("exampleEaRes");data("exampleGeneExp")
     > res <- bngeneplot(results = exampleEaRes, exp = exampleGeneExp, pathNum = 1,
     +                   R = 10, convertSymbol = TRUE, expRow = "ENSEMBL")
     'select()' returned 1:1 mapping between keys and columns
     'select()' returned 1:1 mapping between keys and columns
     Warning: `set.edge.attribute()` was deprecated in igraph 2.0.0.
     ℹ Please use `set_edge_attr()` instead.
     ℹ The deprecated feature was likely used in the CBNplot package.
       Please report the issue at <https://github.com/noriakis/CBNplot/issues>.
     Error:
     ! `hub.score()` was deprecated in igraph 2.0.0 and is now defunct.
     ℹ Please use `hits_scores()` instead.
     Backtrace:
         ▆
      1. └─CBNplot::bngeneplot(...)
      2.   └─igraph::hub.score(g, scale = TRUE, weights = E(g)$color)
      3.     └─lifecycle::deprecate_stop("2.0.0", "hub.score()", "hits_scores()")
      4.       └─lifecycle:::deprecate_stop0(msg)
      5.         └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
         3. │   └─testthat:::quasi_capture(...)
         4. │     ├─testthat (local) .capture(...)
         5. │     │ └─base::withCallingHandlers(...)
         6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
         7. └─CBNplot::bnpathplotCustom(...)
         8.   └─igraph::hub.score(g, scale = TRUE, weights = E(g)$color)
         9.     └─lifecycle::deprecate_stop("2.0.0", "hub.score()", "hits_scores()")
        10.       └─lifecycle:::deprecate_stop0(msg)
        11.         └─rlang::cnd_signal(...)
       ── Error ('test-utils.R:6:5'): utilities: not produce errors in variou parameters ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `hub.score()` was deprecated in igraph 2.0.0 and is now defunct.
       i Please use `hits_scores()` instead.
       Backtrace:
           ▆
        1. └─CBNplot::bngeneplot(...) at test-utils.R:6:5
        2.   └─igraph::hub.score(g, scale = TRUE, weights = E(g)$color)
        3.     └─lifecycle::deprecate_stop("2.0.0", "hub.score()", "hits_scores()")
        4.       └─lifecycle:::deprecate_stop0(msg)
        5.         └─rlang::cnd_signal(...)
       
       [ FAIL 18 | WARN 141 | SKIP 0 | PASS 1 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     Quitting from CBNplot_basic_usage.Rmd:58-60 [usecase]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/lifecycle_error_deprecated>
     Error:
     ! `hub.score()` was deprecated in igraph 2.0.0 and is now defunct.
     ℹ Please use `hits_scores()` instead.
     ---
     Backtrace:
         ▆
      1. └─CBNplot::bngeneplot(...)
      2.   └─igraph::hub.score(g, scale = TRUE, weights = E(g)$color)
      3.     └─lifecycle::deprecate_stop("2.0.0", "hub.score()", "hits_scores()")
      4.       └─lifecycle:::deprecate_stop0(msg)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'CBNplot_basic_usage.Rmd' failed with diagnostics:
     `hub.score()` was deprecated in igraph 2.0.0 and is now defunct.
     ℹ Please use `hits_scores()` instead.
     --- failed re-building ‘CBNplot_basic_usage.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘CBNplot_basic_usage.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

