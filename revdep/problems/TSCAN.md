# TSCAN (1.50.0)

* Email: <mailto:zji4@jhu.edu>
* GitHub mirror: <https://github.com/cran/TSCAN>

Run `revdepcheck::revdep_details(, "TSCAN")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > ### Title: TSCANorder
     > ### Aliases: TSCANorder
     > 
     > ### ** Examples
     > 
     > data(lpsdata)
     > procdata <- preprocess(lpsdata)
     > lpsmclust <- exprmclust(procdata)
     Warning: `graph.adjacency()` was deprecated in igraph 2.0.0.
     ℹ Please use `graph_from_adjacency_matrix()` instead.
     ℹ The deprecated feature was likely used in the TSCAN package.
       Please report the issue to the authors.
     Warning: `minimum.spanning.tree()` was deprecated in igraph 2.0.0.
     ℹ Please use `mst()` instead.
     ℹ The deprecated feature was likely used in the TSCAN package.
       Please report the issue to the authors.
     > TSCANorder(lpsmclust)
     Warning: `get.shortest.paths()` was deprecated in igraph 2.0.0.
     ℹ Please use `shortest_paths()` instead.
     ℹ The deprecated feature was likely used in the TSCAN package.
       Please report the issue to the authors.
     Error in apply(cludist, 1, which.min) : 
       dim(X) must have a positive length
     Calls: TSCANorder -> internalorderfunc -> apply
     Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
       ...
     --- re-building ‘TSCAN.Rnw’ using knitr
     
     Quitting from TSCAN.Rnw:69-72 [unnamed-chunk-4]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/rlang_error>
     Error in `apply()`:
     ! dim(X) must have a positive length
     ---
     Backtrace:
         x
      1. \-TSCAN::TSCANorder(lpsmclust)
      2.   \-TSCAN (local) internalorderfunc(MSTorder, 1)
      3.     \-base::apply(cludist, 1, which.min)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'TSCAN.Rnw' failed with diagnostics:
     dim(X) must have a positive length
     --- failed re-building ‘TSCAN.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘TSCAN.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking R code for possible problems ... NOTE
     ```
     exprmclust: no visible global function definition for ‘dist’
     plotmclust: no visible binding for global variable ‘pca_dim_1’
     plotmclust: no visible binding for global variable ‘pca_dim_2’
     plotmclust: no visible binding for global variable ‘sample_name’
     preprocess: no visible global function definition for ‘dist’
     Undefined global functions or variables:
       dist pca_dim_1 pca_dim_2 sample_name
     Consider adding
       importFrom("stats", "dist")
     to your NAMESPACE file.
     ```

*   checking Rd line widths ... NOTE
     ```
     Rd file 'orderscore.Rd':
       \examples lines wider than 100 characters:
          subpopulation <- data.frame(cell = colnames(procdata), sub = ifelse(grepl("Unstimulated",colnames(procdata)),0,1), stringsAsFactors = F ... [TRUNCATED]
     
     These lines will be truncated in the PDF manual.
     ```

*   checking Rd cross-references ... NOTE
     ```
     Found the following Rd file(s) with Rd \link{} targets missing package
     anchors:
       mapCellsToEdges.Rd: SummarizedExperiment-class,
         SingleCellExperiment-class, assays, reducedDims, graph,
         DataFrame-class
       orderCells.Rd: DataFrame-class, graph, PseudotimeOrdering-class,
         pathStats, cellData, metadata
       perCellEntropy.Rd: SummarizedExperiment-class
       quickPseudotime.Rd: SummarizedExperiment-class,
         SingleCellExperiment-class, assays, reducedDims, List-class, graph,
         PseudotimeOrdering-class
       reportEdges.Rd: SummarizedExperiment-class,
         SingleCellExperiment-class, assays, reducedDims, graph
       testPseudotime.Rd: SummarizedExperiment-class,
         PseudotimeOrdering-class, pathStat, DataFrame-class
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

