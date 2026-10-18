# condiments (1.20.0)

* GitHub: <https://github.com/HectorRDB/condiments>
* Email: <mailto:hector.rouxdebezieux@berkeley.edu>
* GitHub mirror: <https://github.com/cran/condiments>

Run `revdepcheck::revdep_details(, "condiments")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > rd <- slingshotExample$rd
     > cl <- slingshotExample$cl
     > condition <- factor(rep(c('A','B'), length.out = nrow(rd)))
     > condition[110:139] <- 'A'
     > sds <- slingshot::slingshot(rd, cl)
     Warning: `graph.adjacency()` was deprecated in igraph 2.0.0.
     ℹ Please use `graph_from_adjacency_matrix()` instead.
     ℹ The deprecated feature was likely used in the TrajectoryUtils package.
       Please report the issue at <https://github.com/LTLA/TrajectoryUtils/issues>.
     Warning: `minimum.spanning.tree()` was deprecated in igraph 2.0.0.
     ℹ Please use `mst()` instead.
     ℹ The deprecated feature was likely used in the TrajectoryUtils package.
       Please report the issue at <https://github.com/LTLA/TrajectoryUtils/issues>.
     Warning: `get.edge.ids()` was deprecated in igraph 2.1.0.
     ℹ Please use `get_edge_ids()` instead.
     ℹ The deprecated feature was likely used in the TrajectoryUtils package.
       Please report the issue at <https://github.com/LTLA/TrajectoryUtils/issues>.
     Warning: `delete.edges()` was deprecated in igraph 2.0.0.
     ℹ Please use `delete_edges()` instead.
     ℹ The deprecated feature was likely used in the TrajectoryUtils package.
       Please report the issue at <https://github.com/LTLA/TrajectoryUtils/issues>.
     Error in vapply(forest, function(tree) { : values must be length 1,
      but FUN(X[[1]]) result is length 0
     Calls: <Anonymous> ... getLineages -> getLineages -> getLineages -> .local -> vapply
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
         8.         ├─slingshot::getLineages(...)
         9.         └─slingshot::getLineages(...)
        10.           └─slingshot (local) .local(data, clusterLabels, ...)
        11.             └─base::vapply(...)
       ── Error ('test_utils.R:12:1'): (code run outside of `test_that()`) ────────────
       Error in `vapply(forest, function(tree) {     if (length(igraph::V(tree)) == 1) {         return(names(igraph::V(tree)))     }     if (any(start.clus %in% names(igraph::V(tree)))) {         return(start.clus[start.clus %in% names(igraph::V(tree))][1])     }     adj <- igraph::as_adjacency_matrix(tree, sparse = FALSE)     leaves <- rownames(adj)[rowSums(adj) == 1]     avg.lineage.length <- vapply(leaves, function(l) {         ends <- leaves[leaves != l]         paths <- igraph::shortest_paths(tree, from = l, to = ends, mode = "out", output = "vpath")$vpath         mean(vapply(paths, length, 0))     }, 0)     return(names(avg.lineage.length)[which.max(avg.lineage.length)]) }, FUN.VALUE = "")`: values must be length 1,
        but FUN(X[[1]]) result is length 0
       Backtrace:
            ▆
         1. ├─slingshot::slingshot(rd, cl) at test_utils.R:12:1
         2. └─slingshot::slingshot(rd, cl)
         3.   ├─slingshot::slingshot(...)
         4.   └─slingshot::slingshot(...)
         5.     └─slingshot (local) .local(data, clusterLabels, ...)
         6.       ├─slingshot::getLineages(...)
         7.       └─slingshot::getLineages(...)
         8.         ├─slingshot::getLineages(...)
         9.         └─slingshot::getLineages(...)
        10.           └─slingshot (local) .local(data, clusterLabels, ...)
        11.             └─base::vapply(...)
       
       [ FAIL 9 | WARN 4 | SKIP 1 | PASS 0 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
         ▆
      1. ├─slingshot::slingshot(rd, df$cl)
      2. └─slingshot::slingshot(rd, df$cl)
      3.   └─slingshot (local) .local(data, clusterLabels, ...)
      4.     ├─slingshot::getLineages(...)
      5.     └─slingshot::getLineages(...)
      6.       ├─slingshot::getLineages(...)
      7.       └─slingshot::getLineages(...)
      8.         └─slingshot (local) .local(data, clusterLabels, ...)
      9.           └─base::vapply(...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'controls.Rmd' failed with diagnostics:
     values must be length 1,
      but FUN(X[[1]]) result is length 0
     --- failed re-building ‘controls.Rmd’
     
     --- re-building ‘examples.Rmd’ using rmarkdown
     --- finished re-building ‘examples.Rmd’
     
     SUMMARY: processing the following files failed:
       ‘condiments.Rmd’ ‘controls.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking R code for possible problems ... NOTE
     ```
     .condition_sling: no visible binding for global variable ‘.’
     .condition_sling : <anonymous>: no visible binding for global variable
       ‘.’
     .distinct_inputs: no visible binding for global variable ‘Samples’
     .distinct_inputs: no visible binding for global variable ‘.’
     .fateSelectionTest: no visible binding for global variable ‘pair’
     .fateSelectionTest: no visible binding for global variable ‘statistic’
     .fateSelectionTest: no visible binding for global variable ‘p.value’
     .multiple_samples: no visible binding for global variable ‘p.value’
     .progressionTest: no visible binding for global variable ‘lineage’
     .progressionTest: no visible binding for global variable ‘statistic’
     .progressionTest: no visible binding for global variable ‘p.value’
     .topologyTest_multipleSamples: no visible binding for global variable
       ‘p.value’
     fateSelectionTest_multipleSamples,SlingshotDataSet: no visible binding
       for global variable ‘condition’
     progressionTest_multipleSamples,SlingshotDataSet: no visible binding
       for global variable ‘condition’
     Undefined global functions or variables:
       . Samples condition lineage p.value pair statistic
     ```

*   checking Rd cross-references ... NOTE
     ```
     Found the following Rd file(s) with Rd \link{} targets missing package
     anchors:
       fateSelectionTest.Rd: SlingshotDataSet, SingleCellExperiment,
         classifier_test, mmd_test, wasserstein_permut
       fateSelectionTest_multipleSamples.Rd: SlingshotDataSet,
         SingleCellExperiment
       imbalance_score.Rd: SingleCellExperiment, colData
       progressionTest.Rd: SlingshotDataSet, SingleCellExperiment, mmd_test,
         classifier_test, wasserstein_permut, ks_test
       progressionTest_multipleSamples.Rd: SlingshotDataSet,
         SingleCellExperiment
       slingshot_conditions.Rd: SlingshotDataSet, SingleCellExperiment
       topologyTest.Rd: SlingshotDataSet, SingleCellExperiment, ks_test,
         classifier_test, mmd_test, wasserstein_permut, distinct_test
       topologyTest_multipleSamples.Rd: SlingshotDataSet,
         SingleCellExperiment
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

