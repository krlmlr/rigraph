# GWENA (1.22.0)

* GitHub: <https://github.com/Kumquatum/GWENA>
* Email: <mailto:lemoine.gwenaelle@gmail.com>
* GitHub mirror: <https://github.com/cran/GWENA>

Run `revdepcheck::revdep_details(, "GWENA")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     Running examples in ‘GWENA-Ex.R’ failed
     The error most likely occurred in:
     
     > base::assign(".ptime", proc.time(), pos = "CheckExEnv")
     > ### Name: plot_modules_merge
     > ### Title: Modules merge plot
     > ### Aliases: plot_modules_merge
     > 
     > ### ** Examples
     > 
     > df <- kuehne_expr[1:24, 1:350]
     > net <- build_net(df, n_threads = 1)
     Warning in build_net(df, n_threads = 1) :
       The power fitted is above the reference (confidence  interval included): 8. You might want to increase your fit threshold and/or check the scale-free topology fitting through the fit table. See FAQ for more details on power fit troubles.
     > detection <- detect_modules(df, net$network, detailled_result = TRUE)
     > plot_modules_merge(modules_premerge = detection$modules_premerge,
     +                    modules_merged = detection$modules)
     Error: object 'l' not found
     Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     --- re-building ‘GWENA_guide.Rmd’ using rmarkdown
     
     Quitting from GWENA_guide.Rmd:245-254 [bipartite_graph_merge]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/rlang_error>
     Error:
     ! object 'l' not found
     ---
     Backtrace:
         ▆
      1. ├─GWENA::plot_modules_merge(...)
      2. │ └─igraph::layout_as_bipartite(g) %>% ...
      3. └─igraph::norm_coords(...)
      4.   └─igraph (local) .old_signature(...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'GWENA_guide.Rmd' failed with diagnostics:
     object 'l' not found
     --- failed re-building ‘GWENA_guide.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘GWENA_guide.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking whether package ‘GWENA’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: bad markup (extra space?) at compare_conditions.Rd:91:72
       Warning: bad markup (extra space?) at compare_conditions.Rd:96:77
       Warning: bad markup (extra space?) at compare_conditions.Rd:98:74
       Warning: bad markup (extra space?) at compare_conditions.Rd:100:69
     See ‘<lib>/GWENA.Rcheck/00install.out’ for details.
     ```

*   checking Rd files ... WARNING
     ```
     prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:91:72
     prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:96:77
     prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:98:74
     prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:100:69
     ```

*   checking top-level files ... NOTE
     ```
     Non-standard files/directories found at top level:
       ‘LICENSE.md’ ‘data-raw’
     ```

*   checking package subdirectories ... NOTE
     ```
     Problems with news in ‘NEWS.md’:
     No news entries found.
     ```

*   checking Rd cross-references ... NOTE
     ```
     Found the following Rd file(s) with Rd \link{} targets missing package
     anchors:
       build_net.Rd: adjacency.fromSimilarity
       get_fit.cor.Rd: pickSoftThreshold.fromSimilarity
       get_fit.expr.Rd: pickSoftThreshold.fromSimilarity
       plot_module.Rd: igraph.plotting
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

