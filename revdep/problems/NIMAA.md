# NIMAA (0.2.2)

* GitHub: <https://github.com/jafarilab/NIMAA>
* Email: <mailto:mohieddin.jafari@helsinki.fi>
* GitHub mirror: <https://github.com/cran/NIMAA>

Run `revdepcheck::revdep_details(, "NIMAA")` for more info

## Newly broken

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     --- re-building ‘NIMAA-vignette.Rmd’ using rmarkdown
     
     Quitting from NIMAA-vignette.Rmd:188-193 [unnamed-chunk-8]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/rlang_error>
     Error in `sc$clus.avg.widths`:
     ! $ operator is invalid for atomic vectors
     ---
     Backtrace:
         ▆
      1. └─NIMAA::findCluster(sub_matrices$Rectangular_element_max, part = 2)
      2.   └─NIMAA:::compareClusters(clusters = result, extra_feature = extra_feature)
      3.     └─NIMAA::scoreCluster(...)
      4.       └─fpc::cluster.stats(d = dist_mat, clustering = community$membership)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'NIMAA-vignette.Rmd' failed with diagnostics:
     $ operator is invalid for atomic vectors
     --- failed re-building ‘NIMAA-vignette.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘NIMAA-vignette.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

