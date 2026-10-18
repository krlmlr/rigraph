# OmnipathR (4.0.0)

* GitHub: <https://github.com/saezlab/OmnipathR>
* Email: <mailto:turei.denes@gmail.com>
* GitHub mirror: <https://github.com/cran/OmnipathR>

Run `revdepcheck::revdep_details(, "OmnipathR")` for more info

## Newly broken

*   checking whether package ‘OmnipathR’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: `as.directed()` was deprecated in igraph 2.1.0.
       Warning: `get.edgelist()` was deprecated in igraph 2.0.0.
     See ‘<lib>/OmnipathR.Rcheck/00install.out’ for details.
     ```

## In both

*   checking examples ... ERROR
     ```
     ...
       7. │   ├─purrr:::with_indexed_errors(...)
       8. │   │ └─base::withCallingHandlers(...)
       9. │   ├─purrr:::call_with_cleanup(...)
      10. │   └─OmnipathR (local) .f(.x[[i]], ...)
      11. │     ├─... %>% if_null_len0(NA)
      12. │     └─OmnipathR::get_db("organisms")
      13. │       └─OmnipathR::load_db(key, param = param, reload = reload)
      14. │         ├─rlang::exec(loader, !!!param)
      15. │         └─OmnipathR (local) `<fn>`()
      16. │           └─... %>% ...
      17. ├─OmnipathR:::if_null_len0(., NA)
      18. │ └─value1 %>% is_empty_2 %>% if (value2) value1
      19. ├─OmnipathR:::is_empty_2(.)
      20. │ └─value %>% ...
      21. ├─dplyr::pull(., name_type)
      22. ├─dplyr::filter(...)
      23. ├─dplyr::mutate(...)
      24. ├─dplyr::full_join(...)
      25. ├─dplyr::full_join(...)
      26. └─dplyr:::full_join.data.frame(...)
      27.   └─dplyr:::join_mutate(...)
      28.     └─dplyr:::join_cols(...)
      29.       └─dplyr:::check_join_vars(by$y, y_names, by$condition, "y", error_call = error_call)
      30.         └─rlang::abort(bullets, call = error_call)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
        42. │ └─dplyr:::join_mutate(...)
        43. │   └─dplyr:::join_cols(...)
        44. │     └─dplyr:::check_join_vars(by$y, y_names, by$condition, "y", error_call = error_call)
        45. │       └─rlang::abort(bullets, call = error_call)
        46. │         └─rlang:::signal_abort(cnd, .file)
        47. │           └─base::signalCondition(cnd)
        48. ├─purrr (local) `<fn>`(`<rlng_rrr>`)
        49. │ └─cli::cli_abort(...)
        50. │   └─rlang::abort(...)
        51. │     └─rlang:::signal_abort(cnd, .file)
        52. │       └─base::signalCondition(cnd)
        53. └─purrr (local) `<fn>`(`<prrr_rr_>`)
        54.   └─cli::cli_abort(...)
        55.     └─rlang::abort(...)
       ── Error ('test_import.R:182:13'): (code run outside of `test_that()`) ─────────
       Error in `eval(code, test_env)`: object 'response' not found
       Backtrace:
           ▆
        1. ├─response %<>% separate_rows(sources, sep = ";") at test_import.R:182:13
        2. └─tidyr::separate_rows(., sources, sep = ";")
       
       [ FAIL 2 | WARN 2 | SKIP 0 | PASS 56 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
      31. ├─OmnipathR:::is_empty_2(.)
      32. │ └─value %>% ...
      33. ├─dplyr::pull(., name_type)
      34. ├─dplyr::filter(...)
      35. ├─dplyr::mutate(...)
      36. ├─dplyr::full_join(...)
      37. ├─dplyr::full_join(...)
      38. └─dplyr:::full_join.data.frame(...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'paths.Rmd' failed with diagnostics:
     ℹ In index: 1.
     Caused by error in `map_int()`:
     ℹ In index: 1.
     Caused by error in `full_join()`:
     ! Join columns in `y` must be present in the data.
     ✖ Problem with `ncbi_tax_id`.
     --- failed re-building ‘paths.Rmd’
     
     SUMMARY: processing the following files failed:
       ‘bioc_workshop.Rmd’ ‘cosmos.Rmd’ ‘db_manager.Rmd’ ‘drug_targets.Rmd’
       ‘extra_attrs.Rmd’ ‘omnipath_intro.Rmd’ ‘paths.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

*   checking top-level files ... NOTE
     ```
     Non-standard file/directory found at top level:
       ‘AGENTS.md’
     ```

*   checking R code for possible problems ... NOTE
     ```
     Found the following assignments to the global environment:
     File ‘OmnipathR/R/nichenet.R’:
       assign("ncitations", nichenetr %::% ncitations, envir = .GlobalEnv)
       assign("geneinfo_human", nichenetr %::% geneinfo_human, envir = .GlobalEnv)
       assign("lr_network", NULL, .GlobalEnv)
     
     Possibly missing '()' after 'return' in the following function:
       ‘.slow_doctest’
     ```

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘omnipathr-log’
     ```

