# slingshot (2.20.0)

* GitHub: <https://github.com/kstreet13/slingshot>
* Email: <mailto:street.kelly@gmail.com>
* GitHub mirror: <https://github.com/cran/slingshot>

Run `revdepcheck::revdep_details(, "slingshot")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > u <- matrix(rpois(140*50, 5), nrow = 50)
     > sce <- SingleCellExperiment(assays = list(counts = u), 
     +                             reducedDims = SimpleList(PCA = rd),
     +                             colData = data.frame(clus = cl))
     > sce <- slingshot(sce, clusterLabels = 'clus', reducedDim = 'PCA')
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
     Calls: slingshot ... getLineages -> getLineages -> getLineages -> .local -> vapply
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
         9.         └─slingshot::getLineages(...)
        10.           └─slingshot (local) .local(data, clusterLabels, ...)
        11.             └─base::vapply(...)
       ── Error ('test_slingshot.R:795:5'): conversion functions work as expected ─────
       Error in `vapply(forest, function(tree) {     if (length(igraph::V(tree)) == 1) {         return(names(igraph::V(tree)))     }     if (any(start.clus %in% names(igraph::V(tree)))) {         return(start.clus[start.clus %in% names(igraph::V(tree))][1])     }     adj <- igraph::as_adjacency_matrix(tree, sparse = FALSE)     leaves <- rownames(adj)[rowSums(adj) == 1]     avg.lineage.length <- vapply(leaves, function(l) {         ends <- leaves[leaves != l]         paths <- igraph::shortest_paths(tree, from = l, to = ends, mode = "out", output = "vpath")$vpath         mean(vapply(paths, length, 0))     }, 0)     return(names(avg.lineage.length)[which.max(avg.lineage.length)]) }, FUN.VALUE = "")`: values must be length 1,
        but FUN(X[[1]]) result is length 0
       Backtrace:
            ▆
         1. ├─slingshot::slingshot(sce, reducedDim = "PCA", clusterLabels = cl) at test_slingshot.R:795:5
         2. └─slingshot::slingshot(sce, reducedDim = "PCA", clusterLabels = cl)
         3.   └─slingshot (local) .local(data, clusterLabels, ...)
         4.     ├─slingshot::slingshot(...)
         5.     └─slingshot::slingshot(...)
         6.       └─slingshot (local) .local(data, clusterLabels, ...)
         7.         ├─slingshot::getLineages(...)
         8.         └─slingshot::getLineages(...)
         9.           ├─slingshot::getLineages(...)
        10.           └─slingshot::getLineages(...)
        11.             └─slingshot (local) .local(data, clusterLabels, ...)
        12.               └─base::vapply(...)
       
       [ FAIL 12 | WARN 4 | SKIP 0 | PASS 39 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
       2. └─slingshot::slingshot(sce, clusterLabels = "GMM", reducedDim = "PCA")
       3.   └─slingshot (local) .local(data, clusterLabels, ...)
       4.     ├─slingshot::slingshot(...)
       5.     └─slingshot::slingshot(...)
       6.       ├─slingshot::slingshot(...)
       7.       └─slingshot::slingshot(...)
       8.         └─slingshot (local) .local(data, clusterLabels, ...)
       9.           ├─slingshot::getLineages(...)
      10.           └─slingshot::getLineages(...)
      11.             ├─slingshot::getLineages(...)
      12.             └─slingshot::getLineages(...)
      13.               └─slingshot (local) .local(data, clusterLabels, ...)
      14.                 └─base::vapply(...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'vignette.Rmd' failed with diagnostics:
     values must be length 1,
      but FUN(X[[1]]) result is length 0
     --- failed re-building ‘vignette.Rmd’
     
     SUMMARY: processing the following files failed:
       ‘conditionsVignette.Rmd’ ‘vignette.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking Rd files ... NOTE
     ```
     ...
     checkRd: (-1) getCurves.Rd:99-100: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) getCurves.Rd:101-102: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) newSlingshotDataSet.Rd:58: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:59-60: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:61-62: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:63-64: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:65-66: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:69-71: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:72-75: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:76-80: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:81-88: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) newSlingshotDataSet.Rd:89-93: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) slingParams.Rd:25-27: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:28-29: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:30-31: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:32-33: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:34-36: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:37-38: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:42-44: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:45-48: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:49-53: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:54-61: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:62-66: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:67-68: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) slingParams.Rd:68-70: Lost braces in \itemize; \value handles \item{}{} directly
     ```

*   checking Rd cross-references ... NOTE
     ```
     Found the following Rd file(s) with Rd \link{} targets missing package
     anchors:
       SlingshotDataSet-class.Rd: PseudotimeOrdering
       embedCurves.Rd: PseudotimeOrdering
       getCurves.Rd: SingleCellExperiment, PseudotimeOrdering
       getLineages.Rd: SingleCellExperiment, PseudotimeOrdering
       slingBranchGraph.Rd: PseudotimeOrdering, SingleCellExperiment
       slingBranchID.Rd: PseudotimeOrdering, SingleCellExperiment
       slingshot.Rd: SingleCellExperiment, PseudotimeOrdering
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

