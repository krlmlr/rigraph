# glycoTraitR (1.0.0)

* GitHub: <https://github.com/matsui-lab/glycoTraitR>
* Email: <mailto:zhang.bingyuan.w8@f.mail.nagoya-u.ac.jp>
* GitHub mirror: <https://github.com/cran/glycoTraitR>

Run `revdepcheck::revdep_details(, "glycoTraitR")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     +   from = "pGlyco3",
     +   motifs = NULL,
     +   level = "protein",
     +   meta = meta_toyexample
     + )
     adding traits to the gpsm matrix
     Error:
     ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
     ℹ Please use the `parent` argument instead.
     Backtrace:
          ▆
       1. └─glycoTraitR::build_trait_se(...)
       2.   └─glycoTraitR:::annotate_traits_to_gpsm(gpsm, from, motifs)
       3.     └─pbapply::pblapply(glycan, get_trait_vector)
       4.       └─base::lapply(X, FUN, ...)
       5.         └─glycoTraitR (local) FUN(X[[i]], ...)
       6.           └─glycoTraitR::compute_glycan_traits(glycan_list, motifs)
       7.             └─glycoTraitR:::compute_structural_traits(tree)
       8.               └─glycoTraitR::build_glycan_igraph(tree)
       9.                 └─igraph::bfs(g0, root = "a", father = TRUE)
      10.                   └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      11.                     └─lifecycle:::deprecate_stop0(msg)
      12.                       └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
        11.                     └─lifecycle:::deprecate_stop0(msg)
        12.                       └─rlang::cnd_signal(...)
       ── Error ('test-trait_workflow.R:57:3'): plot_trait_distribution returns ggplot objects ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       Backtrace:
            ▆
         1. └─glycoTraitR::build_trait_se(...) at test-trait_workflow.R:57:3
         2.   └─glycoTraitR:::annotate_traits_to_gpsm(gpsm, from, motifs)
         3.     └─pbapply::pblapply(glycan, get_trait_vector)
         4.       └─base::lapply(X, FUN, ...)
         5.         └─glycoTraitR (local) FUN(X[[i]], ...)
         6.           └─glycoTraitR::compute_glycan_traits(glycan_list, motifs)
         7.             └─glycoTraitR:::compute_structural_traits(tree)
         8.               └─glycoTraitR::build_glycan_igraph(tree)
         9.                 └─igraph::bfs(g0, root = "a", father = TRUE)
        10.                   └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
        11.                     └─lifecycle:::deprecate_stop0(msg)
        12.                       └─rlang::cnd_signal(...)
       
       [ FAIL 12 | WARN 0 | SKIP 0 | PASS 55 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
          ▆
       1. └─glycoTraitR::build_trait_se(...)
       2.   └─glycoTraitR:::annotate_traits_to_gpsm(gpsm, from, motifs)
       3.     └─pbapply::pblapply(glycan, get_trait_vector)
       4.       └─base::lapply(X, FUN, ...)
       5.         └─glycoTraitR (local) FUN(X[[i]], ...)
       6.           └─glycoTraitR::compute_glycan_traits(glycan_list, motifs)
       7.             └─glycoTraitR:::compute_structural_traits(tree)
       8.               └─glycoTraitR::build_glycan_igraph(tree)
       9.                 └─igraph::bfs(g0, root = "a", father = TRUE)
      10.                   └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      11.                     └─lifecycle:::deprecate_stop0(msg)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'quick_start.Rmd' failed with diagnostics:
     The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is
     now defunct.
     ℹ Please use the `parent` argument instead.
     --- failed re-building ‘quick_start.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘quick_start.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

