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

# batchelor (1.28.0)

* Email: <mailto:infinite.monkeys.with.keyboards@gmail.com>
* GitHub mirror: <https://github.com/cran/batchelor>

Run `revdepcheck::revdep_details(, "batchelor")` for more info

## Newly broken

*   checking re-building of vignette outputs ... ERROR
     ```
     Error(s) in re-building vignettes:
       ...
     --- re-building ‘correction.Rmd’ using rmarkdown
     The magick package is required to crop "<lib>/batchelor.Rcheck/vign_test/batchelor/vignettes/correction_files/figure-html/unnamed-chunk-7-1.png" but not available.
     The magick package is required to crop "<lib>/batchelor.Rcheck/vign_test/batchelor/vignettes/correction_files/figure-html/unnamed-chunk-11-1.png" but not available.
     The magick package is required to crop "<lib>/batchelor.Rcheck/vign_test/batchelor/vignettes/correction_files/figure-html/unnamed-chunk-12-1.png" but not available.
     The magick package is required to crop "<lib>/batchelor.Rcheck/vign_test/batchelor/vignettes/correction_files/figure-html/unnamed-chunk-18-1.png" but not available.
     Killed
     --- re-building ‘extension.Rmd’ using rmarkdown
     --- finished re-building ‘extension.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘correction.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking tests ... ERROR
     ```
     ...
       ── Failure ('test-reduced-mnn.R:128:5'): reducedMNN works correctly with restriction ──
       Expected `ref$corrected[ref$batch == 1, ]` to be identical to `out$corrected[out$batch == 1, ][keep1, ]`.
       Differences:
       Objects equal but not identical
       ── Failure ('test-reduced-mnn.R:129:5'): reducedMNN works correctly with restriction ──
       Expected `ref$corrected[ref$batch == 2, ]` to be identical to `out$corrected[out$batch == 2, ][keep2, ]`.
       Differences:
       Objects equal but not identical
       ── Failure ('test-reduced-mnn.R:130:5'): reducedMNN works correctly with restriction ──
       Expected `ref$corrected[ref$batch == 3, ]` to be identical to `out$corrected[out$batch == 3, ][keep3, ]`.
       Differences:
       Objects equal but not identical
       ── Failure ('test-reduced-mnn.R:133:5'): reducedMNN works correctly with restriction ──
       Expected `ref$corrected[ref$batch == 2, ][i2, ]` to be identical to `out$corrected[out$batch == 2, ][-keep2, ]`.
       Differences:
       Objects equal but not identical
       ── Failure ('test-reduced-mnn.R:134:5'): reducedMNN works correctly with restriction ──
       Expected `ref$corrected[ref$batch == 3, ][i3, ]` to be identical to `out$corrected[out$batch == 3, ][-keep3, ]`.
       Differences:
       Objects equal but not identical
       
       [ FAIL 6 | WARN 1029 | SKIP 0 | PASS 1041 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking examples ... WARNING
     ```
     ...
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'sumCountsAcrossCells' is deprecated.
       Warning in .local(x, ...) : 'summarizeAssayByGroup' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'librarySizeFactors' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'librarySizeFactors' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in fitTrendVar(fm, fv, ...) : 'fitTrendVar' is deprecated.
       Warning in fitTrendVar(fm, fv, ...) : 'fitTrendVar' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
     Deprecated functions may be defunct as soon as of the next release of
     R.
     See ?Deprecated.
     ```

*   checking whether package ‘batchelor’ can be installed ... NOTE
     ```
     Found the following notes/warnings:
       SystemRequirements specified C++11: support has been removed
     See ‘<lib>/batchelor.Rcheck/00install.out’ for details.
     ```

*   checking C++ specification ... NOTE
     ```
       Obsolete C++11 standard request will be ignored
     ```

*   checking Rd cross-references ... NOTE
     ```
     ...
       diagnostics-cluster.Rd: normalizeCounts
       fastMNN.Rd: SingleCellExperiment-class, BiocSingularParam-class,
         BiocNeighborParam-class, BiocParallelParam-class, DataFrame-class,
         List-class, altExps
       intersectRows.Rd: SingleCellExperiment-class
       mnnCorrect.Rd: SingleCellExperiment-class, BiocSingularParam-class,
         BiocNeighborParam-class, BiocParallelParam-class, List-class
       mnnDeltaVariance.Rd: SingleCellExperiment-class, DataFrame-class,
         BiocParallelParam-class, metadata
       multiBatchNorm.Rd: SingleCellExperiment-class,
         BiocParallelParam-class, logNormCounts, altExps
       multiBatchPCA.Rd: SingleCellExperiment-class,
         BiocSingularParam-class, runSVD, BiocParallelParam-class,
         List-class, IrlbaParam, RandomParam, bsdeferred
       noCorrect.Rd: SingleCellExperiment-class, colData
       quickCorrect.Rd: SingleCellExperiment-class, DataFrame,
         DataFrame-class
       reducedMNN.Rd: BiocNeighborParam-class, BiocParallelParam-class,
         DataFrame-class
       regressBatches.Rd: SingleCellExperiment-class, ResidualMatrix,
         BiocSingularParam-class, BiocParallelParam-class,
         ResidualMatrix-class, reducedDims, altExps
       rescaleBatches.Rd: SingleCellExperiment-class, altExps
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

# Boptbd (1.0.7)

* Email: <mailto:diboobayu@gmail.com>
* GitHub mirror: <https://github.com/cran/Boptbd>

Run `revdepcheck::revdep_details(, "Boptbd")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > ### Title: Creates the graphical layout of resultant optimal design
     > ### Aliases: graphoptBbd
     > ### Keywords: Graphical layout
     > 
     > ### ** Examples
     > 
     >     ##To create the graphical layout of the D-optimal block design
     >     ##obtained using the treatment exchange algorithm for 
     >     trt.N <- 10  #Number of treatments
     >     blk.N <- 10  #Number of blocks
     >     alpha <- 0.1 #alpha value 
     >     beta  <- 0.1 #beta value 
     >     OptdesF <- rbind(1:10, c(2:10,1)) #Bayesian A-optimal block design (loop design)
     > 
     >     graphoptBbd(trt.N = 10, blk.N = 10, alpha = 0.1, beta = 0.1, OptdesF, Optcrit = "A")
     Error:
     ! `tkplot()` was deprecated in igraph 3.0.0 and is now defunct.
     Backtrace:
         ▆
      1. └─Boptbd::graphoptBbd(...)
      2.   └─igraph::tkplot(...)
      3.     └─lifecycle::deprecate_stop("3.0.0", "tkplot()")
      4.       └─lifecycle:::deprecate_stop0(msg)
      5.         └─rlang::cnd_signal(...)
     Execution halted
     ```

# BulkSignalR (1.4.0)

* GitHub: <https://github.com/jcolinge/BulkSignalR>
* Email: <mailto:jpvillemin@gmail.com>
* GitHub mirror: <https://github.com/cran/BulkSignalR>

Run `revdepcheck::revdep_details(, "BulkSignalR")` for more info

## Newly broken

*   checking whether the package can be loaded ... ERROR
     ```
     Loading this package had a fatal error status code 1
     Loading log:
     ✖ Remote server is down. 
     "https://partage-dev.montp.inserm.fr:9192/CBSB/"
     Error while performing HEAD request.
        Proceeding without cache information.
     Error: package or namespace load failed for ‘BulkSignalR’:
      .onLoad failed in loadNamespace() for 'BulkSignalR', details:
       call: if (any(BiocFileCache::bfcneedsupdate(bfc, config = config))) {
       error: missing value where TRUE/FALSE needed
     Execution halted
     ```

## Newly fixed

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘interaction-plot-ADAM17-ERBB4’ ‘interaction-plot-ADM-VIPR1’
       ‘spatialIndexPlot’
     ```

## In both

*   checking top-level files ... NOTE
     ```
     Non-standard file/directory found at top level:
       ‘LICENSE.md’
     ```

# c3net (1.1.1.1)

* Email: <mailto:altayscience@gmail.com>
* GitHub mirror: <https://github.com/cran/c3net>

Run `revdepcheck::revdep_details(, "c3net")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > 
     > net <- c3net(expdata, network=TRUE)
     Warning: `graph.adjacency()` was deprecated in igraph 2.0.0.
     ℹ Please use `graph_from_adjacency_matrix()` instead.
     ℹ The deprecated feature was likely used in the c3net package.
       Please report the issue to the authors.
     Warning: `get.edgelist()` was deprecated in igraph 2.0.0.
     ℹ Please use `as_edgelist()` instead.
     ℹ The deprecated feature was likely used in the c3net package.
       Please report the issue to the authors.
     Warning: `graph.edgelist()` was deprecated in igraph 2.0.0.
     ℹ Please use `graph_from_edgelist()` instead.
     ℹ The deprecated feature was likely used in the c3net package.
       Please report the issue to the authors.
     Error:
     ! `tkplot()` was deprecated in igraph 3.0.0 and is now defunct.
     Backtrace:
         ▆
      1. └─c3net::c3net(expdata, network = TRUE)
      2.   └─c3net::netplot(net)
      3.     └─igraph::tkplot(z)
      4.       └─lifecycle::deprecate_stop("3.0.0", "tkplot()")
      5.         └─lifecycle:::deprecate_stop0(msg)
      6.           └─rlang::cnd_signal(...)
     Execution halted
     ```

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

# cfid (0.1.8)

* GitHub: <https://github.com/santikka/cfid>
* Email: <mailto:santtuth@gmail.com>
* GitHub mirror: <https://github.com/cran/cfid>

Run `revdepcheck::revdep_details(, "cfid")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected `import_graph(ig)` to be identical to `dag("X -> Z -> Y X <-> Y")`.
       Differences:
         `dim(actual)`: 5 5
       `dim(expected)`: 4 4
       
       `attr(actual, 'labels')[2:5]`:   "Z" "Y" "U[X,Y]" "U[Z,Y]"
       `attr(expected, 'labels')[2:4]`: "Z" "Y" "U[X,Y]"         
       
       `attr(actual, 'latent')[2:5]`:   FALSE FALSE TRUE TRUE
       `attr(expected, 'latent')[2:4]`: FALSE FALSE TRUE     
       
         `attr(actual, 'order')`: 4 5 3 1 2
       `attr(expected, 'order')`: 4 1 2 3  
       
       `attr(actual, 'text')`:   "X; Z; Y; X -> Z; Y -> X; X <-> Y; Z <-> Y"
       `attr(expected, 'text')`: "X; Z; Y; X -> Z; Z -> Y; X <-> Y"         
       
               `actual`: 0 0 1 1 0 1 0 0 0 1 and 15 more...
       `expected[2:16]`: 0 0 1 1 0 0 0 0 1 0            ...
       
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 204 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# comato (1.1)

* Email: <mailto:andreas.muehling@tum.de>
* GitHub mirror: <https://github.com/cran/comato>

Run `revdepcheck::revdep_details(, "comato")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > g2 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
     > g3 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
     > E(g1)$name <- rep("", length(E(g1)))
     > E(g2)$name <- rep("", length(E(g2)))
     > E(g3)$name <- rep("", length(E(g3)))
     > #Create conceptmaps object from three conceptmap objects
     > simple_cms = conceptmaps(list(conceptmap(g1), conceptmap(g2), conceptmap(g3)))
     > 
     > plot(simple_cms, layout="spring")
     Warning: `graph.union()` was deprecated in igraph 2.0.0.
     ℹ Please use `union.igraph()` instead.
     ℹ The deprecated feature was likely used in the comato package.
       Please report the issue to the authors.
     Error:
     ! `layout.spring()` was deprecated in igraph 2.1.0 and is now defunct.
     ℹ Please use `layout_with_fr()` instead.
     Backtrace:
         ▆
      1. ├─base::plot(simple_cms, layout = "spring")
      2. └─comato:::plot.conceptmaps(simple_cms, layout = "spring")
      3.   └─igraph::layout.spring(union)
      4.     └─lifecycle::deprecate_stop("2.1.0", "layout.spring()", "layout_with_fr()")
      5.       └─lifecycle:::deprecate_stop0(msg)
      6.         └─rlang::cnd_signal(...)
     Execution halted
     ```

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Mismatches for apparent methods not registered:
     min:
       function(..., na.rm)
     min.distance:
       function(centers, com, layouts)
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

*   checking R code for possible problems ... NOTE
     ```
     Found if() conditions comparing class() to string:
     File ‘comato/R/concept_maps.r’: if (class(m) != "conceptmap") ...
     Use inherits() (or maybe is()) instead.
     ```

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

# cranly (0.6.0)

* GitHub: <https://github.com/ikosmidis/cranly>
* Email: <mailto:ioannis.kosmidis@warwick.ac.uk>
* GitHub mirror: <https://github.com/cran/cranly>

Run `revdepcheck::revdep_details(, "cranly")` for more info

## Newly broken

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
         ▆
      1. ├─base::summary(package_network)
      2. └─cranly:::summary.cranly_network(package_network)
      3.   └─igraph::eigen_centrality(cranly_graph, scale = FALSE)
      4.     └─lifecycle::deprecate_stop(...)
      5.       └─lifecycle:::deprecate_stop0(msg)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'cranly.Rmd' failed with diagnostics:
     The `scale` argument of `eigen_centrality()` always as if TRUE as of
     igraph 2.1.1.
     ℹ Normalization is always performed
     --- failed re-building ‘cranly.Rmd’
     
     --- re-building ‘dependence_trees.Rmd’ using rmarkdown
     --- finished re-building ‘dependence_trees.Rmd’
     
     --- re-building ‘extractors.Rmd’ using rmarkdown
     --- finished re-building ‘extractors.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘cranly.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# dci (1.0.3)

* GitHub: <https://github.com/aarkilanian/dci>
* Email: <mailto:a.arkilanian@gmail.com>
* GitHub mirror: <https://github.com/cran/dci>

Run `revdepcheck::revdep_details(, "dci")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
          ▆
       1. ├─dci::river_net(...)
       2. │ └─dci:::node_labeling(net)
       3. │   └─activate(net, nodes) %>% ...
       4. ├─dplyr::mutate(...)
       5. ├─tidygraph:::mutate.tbl_graph(...)
       6. │ └─tidygraph::mutate_as_tbl(.data, !!!dot)
       7. │   ├─dplyr::mutate(d_tmp, ...)
       8. │   ├─sf:::mutate.sf(d_tmp, ...)
       9. │   │ └─sf:::.re_sf(NextMethod(), sf_column_name = sf_column_name, agr)
      10. │   │   └─base::stopifnot(...)
      11. │   ├─base::NextMethod()
      12. │   └─dplyr:::mutate.data.frame(d_tmp, ...)
      13. │     └─dplyr:::mutate_cols(.data, dplyr_quosures(...), by)
      14. │       ├─base::withCallingHandlers(...)
      15. │       └─dplyr:::mutate_col(dots[[i]], data, mask, new_columns)
      16. │         └─mask$eval_all_mutate(quo)
      17. │           └─dplyr (local) eval()
      18. └─tidygraph::map_bfs(...)
      19.   └─tidygraph:::bfs_df(graph, root, mode, unreachable)
      20.     └─igraph::bfs(...)
      21.       └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      22.         └─lifecycle:::deprecate_stop0(msg)
      23.           └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-label.R:6:3'): Correct node labels created ─────────────────────
       <dplyr:::mutate_error/rlang_error/error/condition>
       Error in `stopifnot(!inherits(x, "sf"), !missing(sf_column_name), !missing(agr))`: i In argument: `node_label = tidygraph::map_bfs(...)`.
       Caused by error:
       ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       ── Error ('test-label.R:18:3'): Correct member labels created ──────────────────
       <dplyr:::mutate_error/rlang_error/error/condition>
       Error in `stopifnot(!inherits(x, "sf"), !missing(sf_column_name), !missing(agr))`: i In argument: `member_label = tidygraph::map_dfs_int(...)`.
       Caused by error:
       ! The `father` argument of `dfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       ── Error ('test-river_net.R:18:3'): Simple river network is created ────────────
       <dplyr:::mutate_error/rlang_error/error/condition>
       Error in `stopifnot(!inherits(x, "sf"), !missing(sf_column_name), !missing(agr))`: i In argument: `node_label = tidygraph::map_bfs(...)`.
       Caused by error:
       ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       
       [ FAIL 3 | WARN 0 | SKIP 1 | PASS 46 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
      15. │     └─dplyr:::mutate_cols(.data, dplyr_quosures(...), by)
      16. │       ├─base::withCallingHandlers(...)
      17. │       └─dplyr:::mutate_col(dots[[i]], data, mask, new_columns)
      18. │         └─mask$eval_all_mutate(quo)
      19. │           └─dplyr (local) eval()
      20. └─tidygraph::map_bfs(...)
      21.   └─tidygraph:::bfs_df(graph, root, mode, unreachable)
      22.     └─igraph::bfs(...)
      23.       └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      24.         └─lifecycle:::deprecate_stop0(msg)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'user_guide.Rmd' failed with diagnostics:
     ℹ In argument: `node_label = tidygraph::map_bfs(...)`.
     Caused by error:
     ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
     ℹ Please use the `parent` argument instead.
     --- failed re-building ‘user_guide.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘user_guide.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# degreenet (1.3-7)

* Email: <mailto:handcock@stat.ucla.edu>
* GitHub mirror: <https://github.com/cran/degreenet>

Run `revdepcheck::revdep_details(, "degreenet")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     Running examples in ‘degreenet-Ex.R’ failed
     The error most likely occurred in:
     
     > base::assign(".ptime", proc.time(), pos = "CheckExEnv")
     > ### Name: reedmolloy
     > ### Title: Generate a undirected network with a given sequence of degrees
     > ### Aliases: reedmolloy
     > ### Keywords: models
     > 
     > ### ** Examples
     > 
     > # Now, simulate a Poisson Lognormal distribution over 100
     > # observations with mean = -1 and s.d. = 1.
     > 
     > set.seed(2)
     > s4 <- simpln(n=100, v=c(-1,1))
     > table(s4)
     s4
      1  2  3  4  5  6 
     65 18  7  4  4  2 
     > #
     > simr <- reedmolloy(s4)
     Error in reedmolloy(s4) : 
       The reedmolloy function failed to form a valid network from the passed degree sequence.
     Execution halted
     ```

## In both

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

# ECoL (0.4.4)

* GitHub: <https://github.com/lpfgarcia/ECoL>
* Email: <mailto:luis.garcia@unb.br>
* GitHub mirror: <https://github.com/cran/ECoL>

Run `revdepcheck::revdep_details(, "ECoL")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     ! `hub.score()` was deprecated in igraph 2.0.0 and is now defunct.
     ℹ Please use `hits_scores()` instead.
     Backtrace:
          ▆
       1. ├─ECoL::complexity(Species ~ ., iris)
       2. └─ECoL:::complexity.formula(Species ~ ., iris)
       3.   └─ECoL:::complexity.default(...)
       4.     ├─base::unlist(...)
       5.     └─base::sapply(...)
       6.       └─base::lapply(X = X, FUN = FUN, ...)
       7.         └─ECoL (local) FUN(X[[i]], ...)
       8.           ├─base::do.call(group, list(x = x, y = y, summary = summary, ...))
       9.           ├─ECoL::network(x = `<data.frame>`, y = `<fct>`, summary = `<chr>`)
      10.           └─ECoL:::network.default(x = `<data.frame>`, y = `<fct>`, summary = `<chr>`)
      11.             └─base::sapply(...)
      12.               └─base::lapply(X = X, FUN = FUN, ...)
      13.                 └─ECoL (local) FUN(X[[i]], ...)
      14.                   ├─base::eval(call(paste("class", f, sep = "."), graph))
      15.                   │ └─base::eval(call(paste("class", f, sep = "."), graph))
      16.                   └─ECoL:::class.G3(`<S3: igraph>`)
      17.                     └─igraph::hub.score(graph)
      18.                       └─lifecycle::deprecate_stop("2.0.0", "hub.score()", "hits_scores()")
      19.                         └─lifecycle:::deprecate_stop0(msg)
      20.                           └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
        20.                           └─rlang::cnd_signal(...)
       ── Error ('test_network.R:11:3'): multiclass.result ────────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `hub.score()` was deprecated in igraph 2.0.0 and is now defunct.
       ℹ Please use `hits_scores()` instead.
       Backtrace:
            ▆
         1. ├─ECoL::network(Species ~ ., iris, measures = "G3", summary = "mean") at test_network.R:11:3
         2. └─ECoL:::network.formula(Species ~ ., iris, measures = "G3", summary = "mean")
         3.   └─ECoL:::network.default(...)
         4.     └─base::sapply(...)
         5.       └─base::lapply(X = X, FUN = FUN, ...)
         6.         └─ECoL (local) FUN(X[[i]], ...)
         7.           ├─base::eval(call(paste("class", f, sep = "."), graph))
         8.           │ └─base::eval(call(paste("class", f, sep = "."), graph))
         9.           └─ECoL:::class.G3(`<S3: igraph>`)
        10.             └─igraph::hub.score(graph)
        11.               └─lifecycle::deprecate_stop("2.0.0", "hub.score()", "hits_scores()")
        12.                 └─lifecycle:::deprecate_stop0(msg)
        13.                   └─rlang::cnd_signal(...)
       
       [ FAIL 3 | WARN 4 | SKIP 0 | PASS 96 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# FELLA (1.32.0)

* Email: <mailto:sergi.picart@upc.edu>
* GitHub mirror: <https://github.com/cran/FELLA>

Run `revdepcheck::revdep_details(, "FELLA")` for more info

## Newly broken

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
       Please report the issue to the authors.
     Computing probabilities for random subgraphs... (this may take a while)
     Directory /tmp/RtmpeJPu49/working_dir/RtmpArF5s5/my_database does not exist. Creating it...
     Done.
     Done.
     Computing diffusion.matrix... (this may take a while and use some memory)
     Warning: `as.undirected()` was deprecated in igraph 2.1.0.
     ℹ Please use `as_undirected()` instead.
     ℹ The deprecated feature was likely used in the FELLA package.
       Please report the issue to the authors.
     Warning: `graph.laplacian()` was deprecated in igraph 2.0.0.
     ℹ Please use `laplacian_matrix()` instead.
     ℹ The deprecated feature was likely used in the FELLA package.
       Please report the issue to the authors.
     Warning: The `normalized` argument of `make_lattice()` provide normalization instead as
     of igraph 2.0.3.
     ℹ `normalized` is now deprecated, use `normalization` instead.
     ℹ The deprecated feature was likely used in the igraph package.
       Please report the issue at <https://github.com/igraph/rigraph/issues>.
     Killed
     SUMMARY: processing the following files failed:
       ‘musmusculus.Rmd’ ‘zebrafish.Rmd’ ‘FELLA.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

*   checking whether package ‘FELLA’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: `graph.empty()` was deprecated in igraph 2.1.0.
     See ‘<lib>/FELLA.Rcheck/00install.out’ for details.
     ```

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     
     --- re-building ‘FELLA.Rnw’ using Sweave
     Building through KEGGREST...
     Available gene annotations: ncbi-geneid, ncbi-proteinid. Using ncbi-geneid
     Done.
     Building graph...
     Filtering 5 pathways.
     Done.
     Pruning graph...
     Current weight: 1 out of 4...
     Current weight: 2 out of 4...
     Current weight: 3 out of 4...
     Current weight: 4 out of 4...
     Done.
     Computing probabilities for random subgraphs... (this may take a while)
     Directory /tmp/RtmpxnwKXY/working_dir/Rtmp42Heuk/my_database does not exist. Creating it...
     Done.
     Done.
     Computing diffusion.matrix... (this may take a while and use some memory)
     Killed
     SUMMARY: processing the following files failed:
       ‘musmusculus.Rmd’ ‘zebrafish.Rmd’ ‘FELLA.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking sizes of PDF files under ‘inst/doc’ ... WARNING
     ```
       ‘gs+qpdf’ made some significant size reductions:
          compacted ‘FELLA.pdf’ from 1130Kb to 624Kb
       consider running tools::compactPDF(gs_quality = "ebook") on these files,
       or build the source package with --compact-vignettes=both
     ```

*   checking R code for possible problems ... NOTE
     ```
     buildGraphFromKEGGREST: no visible global function definition for
       ‘capture.output’
     Undefined global functions or variables:
       capture.output
     Consider adding
       importFrom("utils", "capture.output")
     to your NAMESPACE file.
     ```

*   checking Rd \usage sections ... NOTE
     ```
     Documented arguments not in \usage in Rd file 'dot-params.Rd':
       ‘databaseDir’ ‘internalDir’ ‘object’ ‘data’ ‘type’ ‘level’ ‘method’
       ‘methods’ ‘approx’ ‘loadMatrix’ ‘threshold’
       ‘thresholdConnectedComponent’ ‘plimit’ ‘nlimit’ ‘niter’ ‘layout’
       ‘graph’ ‘GOterm’ ‘GONamesAsLabels’ ‘LabelLengthAtPlot’
       ‘godata.options’ ‘mart.options’ ‘p.adjust’ ‘dampingFactor’ ‘t.df’
       ‘compounds’ ‘compoundsBackground’ ‘NamesAsLabels’ ‘capPscores’
     
     Documented arguments not in \usage in Rd file 'infere.con2ec.Rd':
       ‘gene2enyzme’
     
     Functions with \usage entries need to have the appropriate \alias
     entries, and all their arguments documented.
     The \usage entries must correspond to syntactically valid R code.
     See chapter ‘Writing R documentation files’ in the ‘Writing R
     Extensions’ manual.
     ```

# ggm (2.5.4)

* Email: <mailto:giovanni.marchetti@unifi.it>
* GitHub mirror: <https://github.com/cran/ggm>

Run `revdepcheck::revdep_details(, "ggm")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     +              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
     +              1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
     +              0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0),16,16,byrow=TRUE)
     > M <- c(3,5,6,15,16)
     > C <- c(4,7)
     > AG(ex, M, C, plot = TRUE)
     Warning: `graph()` was deprecated in igraph 2.1.0.
     ℹ Please use `make_graph()` instead.
     ℹ The deprecated feature was likely used in the ggm package.
       Please report the issue to the authors.
     Warning: `get.edgelist()` was deprecated in igraph 2.0.0.
     ℹ Please use `as_edgelist()` instead.
     ℹ The deprecated feature was likely used in the ggm package.
       Please report the issue to the authors.
     Error:
     ! `tkplot()` was deprecated in igraph 3.0.0 and is now defunct.
     Backtrace:
         ▆
      1. └─ggm::AG(ex, M, C, plot = TRUE)
      2.   └─ggm (local) plotfun(fr, ...)
      3.     └─igraph::tkplot(...)
      4.       └─lifecycle::deprecate_stop("3.0.0", "tkplot()")
      5.         └─lifecycle:::deprecate_stop0(msg)
      6.           └─rlang::cnd_signal(...)
     Execution halted
     ```

# ggraph (2.2.2)

* GitHub: <https://github.com/thomasp85/ggraph>
* Email: <mailto:thomasp85@gmail.com>
* GitHub mirror: <https://github.com/cran/ggraph>

Run `revdepcheck::revdep_details(, "ggraph")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     Caused by error:
     ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
     ℹ Please use the `parent` argument instead.
     Backtrace:
          ▆
       1. ├─tbl_graph(flare$vertices, flare$edges) %>% ...
       2. ├─dplyr::mutate(...)
       3. ├─tidygraph:::mutate.tbl_graph(...)
       4. │ └─tidygraph::mutate_as_tbl(.data, !!!dot)
       5. │   ├─dplyr::mutate(d_tmp, ...)
       6. │   └─dplyr:::mutate.data.frame(d_tmp, ...)
       7. │     └─dplyr:::mutate_cols(.data, dplyr_quosures(...), by)
       8. │       ├─base::withCallingHandlers(...)
       9. │       └─dplyr:::mutate_col(dots[[i]], data, mask, new_columns)
      10. │         └─mask$eval_all_mutate(quo)
      11. │           └─dplyr (local) eval()
      12. └─tidygraph::map_bfs_chr(...)
      13.   └─tidygraph::map_bfs(...)
      14.     └─tidygraph:::bfs_df(graph, root, mode, unreachable)
      15.       └─igraph::bfs(...)
      16.         └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      17.           └─lifecycle:::deprecate_stop0(msg)
      18.             └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
      16.           └─lifecycle:::deprecate_stop0(msg)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'Edges.Rmd' failed with diagnostics:
     ℹ In argument: `Class = map_bfs_back_chr(...)`.
     Caused by error:
     ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
     ℹ Please use the `parent` argument instead.
     --- failed re-building ‘Edges.Rmd’
     
     --- re-building ‘Layouts.Rmd’ using rmarkdown
     --- finished re-building ‘Layouts.Rmd’
     
     --- re-building ‘Nodes.Rmd’ using rmarkdown
     --- finished re-building ‘Nodes.Rmd’
     
     --- re-building ‘tidygraph.Rmd’ using rmarkdown
     --- finished re-building ‘tidygraph.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘Edges.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

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

# glyrepr (1.0.0)

* GitHub: <https://github.com/glycoverse/glyrepr>
* Email: <mailto:23110220018@m.fudan.edu.cn>
* GitHub mirror: <https://github.com/cran/glyrepr>

Run `revdepcheck::revdep_details(, "glyrepr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         'test-floating-parts.R:480:1', 'test-floating-substituents.R:94:1',
         'test-floating-substituents.R:133:1', 'test-floating-substituents.R:173:1',
         'test-floating-validation.R:37:1', 'test-floating-validation.R:51:1',
         'test-floating-validation.R:65:1', 'test-floating-validation.R:79:1',
         'test-floating-validation.R:109:1', 'test-floating-validation.R:139:1',
         'test-floating-validation.R:159:1', 'test-floating-validation.R:203:1',
         'test-low-level-structure.R:46:1', 'test-low-level-structure.R:82:1',
         'test-low-level-structure.R:159:1', 'test-low-level-structure.R:222:1',
         'test-low-level-structure.R:236:1', 'test-smap.R:1041:1',
         'test-structure-tables.R:497:1', 'test-structure.R:520:1',
         'test-structure.R:539:1', 'test-structure.R:588:1', 'test-structure.R:608:1',
         'test-structure.R:668:1', 'test-structure.R:675:1', 'test-structure.R:683:1',
         'test-structure.R:724:1', 'test-structure.R:779:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-structure-to-iupac.R:124:3'): structure_to_iupac handles complex branched structures ──
       <purrr_error_indexed/rlang_error/error/condition>
       Error in `purrr::map(valid_graphs, function(graph) {     checkmate::assert_class(graph, "igraph")     graph %>% validate_glycan_graph() %>% canonicalize_glycan_graph() })`: i In index: 1.
       Caused by error in `validate_glycan_graph()`:
       ! Duplicated linkage positions.
       
       [ FAIL 1 | WARN 0 | SKIP 46 | PASS 1885 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# GoodFitSBM (0.0.1)

* GitHub: <https://github.com/Roy-SR-007/GoodFitSBM>
* Email: <mailto:sohamghosh@tamu.edu>
* GitHub mirror: <https://github.com/cran/GoodFitSBM>

Run `revdepcheck::revdep_details(, "GoodFitSBM")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     ℹ The deprecated feature was likely used in the GoodFitSBM package.
       Please report the issue at <https://github.com/Roy-SR-007/GoodFitSBM/issues>.
     Warning: `get.edge.ids()` was deprecated in igraph 2.1.0.
     ℹ Please use `get_edge_ids()` instead.
     ℹ The deprecated feature was likely used in the GoodFitSBM package.
       Please report the issue at <https://github.com/Roy-SR-007/GoodFitSBM/issues>.
     Error:
     ! The `vp` argument of `get_edge_ids()` supplied as a matrix should be a
       n times 2 matrix, not 2 times n as of igraph 2.1.5.
     ℹ either transpose the matrix with t() or convert it to a data.frame with two
       columns.
     Backtrace:
          ▆
       1. └─GoodFitSBM::goftest_BetaSBM(adjsymm, C = class, numGraphs = 10)
       2.   └─GoodFitSBM::sample_a_move_BetaSBM(C, G)
       3.     └─GoodFitSBM:::Get.Next.Network(...)
       4.       └─GoodFitSBM:::Get.Move.beta.SBM(b, blocks = SBM.blocks, coin = beta.SBM.coin)
       5.         └─GoodFitSBM:::Get.Induced.Subgraph(g, v.block[[i]])
       6.           └─igraph::get.edge.ids(g, pairs)
       7.             └─igraph::get_edge_ids(...)
       8.               └─igraph:::el_to_vec(vp, call = rlang::caller_env())
       9.                 └─lifecycle::deprecate_stop(...)
      10.                   └─lifecycle:::deprecate_stop0(msg)
      11.                     └─rlang::cnd_signal(...)
     Execution halted
     ```

# graphite (1.58.0)

* GitHub: <https://github.com/sales-lab/graphite>
* Email: <mailto:gabriele.sales@unipd.it>
* GitHub mirror: <https://github.com/cran/graphite>

Run `revdepcheck::revdep_details(, "graphite")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
     Complete output:
       > library(testthat)
       > library(graphite)
       > 
       > test_check("graphite")
       Saving _problems/test_clipper-80.R
       Saving _problems/test_topologygsa-72.R
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 93 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test_clipper.R:80:3'): parallel and serial analyses of a PathwayList produce the same results ──
       Expected `serial` to be identical to `parallel`.
       Differences:
       Component "warnings": Names: 1 string mismatch
       Component "warnings": Length mismatch: comparison on first 1 components
       Component "warnings": Component 1: 1 string mismatch
       ── Failure ('test_topologygsa.R:72:3'): parallel and serial analyses of a PathwayList produce the same results ──
       Expected `serial` to be identical to `parallel`.
       Differences:
       Component "warnings": Length mismatch: comparison on first 1 components
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 93 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     Loading required package: hgu95av2.db
     
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'graphite.Rnw' failed with diagnostics:
     unable to run pdflatex on 'graphite.tex'
     LaTeX errors:
     ! LaTeX Error: File `beramono.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.94 \RequirePackage
                         [T1]{fontenc}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘graphite.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘graphite.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

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

# manynet (2.3.1)

* GitHub: <https://github.com/stocnet/manynet>
* Email: <mailto:james.hollway@graduateinstitute.ch>
* GitHub mirror: <https://github.com/cran/manynet>

Run `revdepcheck::revdep_details(, "manynet")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
           ▆
        1. ├─testthat::expect_null(...) at test-tutorials_manynet.R:4:5
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─manynet:::check_tute_functions(tute)
        5.   └─testthat::expect_null(...) at ./helper-manynet.R:225:5
       ── Failure ('test-tutorials_manynet.R:4:5'): manynet tutorial code runs without warnings or errors ──
       Expected `w` to be NULL.
       Differences:
       `actual` is an S3 object of class <lifecycle_warning_deprecated/rlang_warning/warning/condition>, a list
       `expected` is NULL
       
       Warning in expression 54 : mean(as_matrix(s_women))
       Backtrace:
           ▆
        1. ├─testthat::expect_null(...) at test-tutorials_manynet.R:4:5
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─manynet:::check_tute_functions(tute)
        5.   └─testthat::expect_null(...) at ./helper-manynet.R:225:5
       
       [ FAIL 6 | WARN 1317 | SKIP 96 | PASS 4747 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# MetaNet (0.3.2)

* GitHub: <https://github.com/Asa12138/MetaNet>
* Email: <mailto:bfzede@gmail.com>
* GitHub mirror: <https://github.com/cran/MetaNet>

Run `revdepcheck::revdep_details(, "MetaNet")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     Running examples in ‘MetaNet-Ex.R’ failed
     The error most likely occurred in:
     
     > base::assign(".ptime", proc.time(), pos = "CheckExEnv")
     > ### Name: zp_analyse
     > ### Title: Zi-Pi calculate
     > ### Aliases: zp_analyse zp_plot
     > 
     > ### ** Examples
     > 
     > data("c_net")
     > module_detect(co_net) -> co_net_modu
     > zp_analyse(co_net_modu) -> co_net_modu
     Error in deter_role(x["Pi"], x["Zi"], backs) : object 'role' not found
     Calls: zp_analyse -> apply -> FUN -> deter_role
     Execution halted
     ```

# migraph (1.7.0)

* GitHub: <https://github.com/stocnet/migraph>
* Email: <mailto:james.hollway@graduateinstitute.ch>
* GitHub mirror: <https://github.com/cran/migraph>

Run `revdepcheck::revdep_details(, "migraph")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ══ Skipped tests (3) ═══════════════════════════════════════════════════════════
       • On Linux (1): 'test-model_tests.R:58:3'
       • Skipping slow functions in diffusion.Rmd (1): 'test-tutorials_migraph.R:12:5'
       • empty test (1): 'test-measure_over.R:1:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-tutorials_migraph.R:12:5'): migraph tutorial code runs without warnings or errors ──
       Expected `w` to be NULL.
       Differences:
       `actual` is an S3 object of class <lifecycle_warning_deprecated/rlang_warning/warning/condition>, a list
       `expected` is NULL
       
       Warning in expression 17 : rg <- create_ring(32, width = 2)
       Backtrace:
           ▆
        1. ├─testthat::expect_null(...) at test-tutorials_migraph.R:12:5
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─migraph:::check_tute_functions(tute, skip = "ergm\\(|play_diffusions\\(")
        5.   └─testthat::expect_null(...) at ./helper-functions.R:126:5
       
       [ FAIL 1 | WARN 0 | SKIP 3 | PASS 276 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# nat (1.8.26)

* GitHub: <https://github.com/natverse/nat>
* Email: <mailto:jefferis@gmail.com>
* GitHub mirror: <https://github.com/cran/nat>

Run `revdepcheck::revdep_details(, "nat")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > hist(igraph::distances(ngw))
     > 
     > # converting back and forth between neurons and graphs
     > g=as.ngraph(Cell07PNs[[1]])
     > gstem=igraph::induced_subgraph(g, 1:10)
     > # this is fine
     > plot(gstem)
     > plot(as.neuron(gstem))
     Error:
     ! The `father` argument of `dfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
     ℹ Please use the `parent` argument instead.
     Backtrace:
          ▆
       1. ├─base::plot(as.neuron(gstem))
       2. ├─nat::as.neuron(gstem)
       3. └─nat:::as.neuron.igraph(gstem)
       4.   └─nat:::as.neuron.ngraph(x, ...)
       5.     ├─nat::as.seglist(masterg <- x, origin = origin, Verbose = Verbose)
       6.     └─nat:::as.seglist.igraph(masterg <- x, origin = origin, Verbose = Verbose)
       7.       └─igraph::dfs(x, root = origin, father = TRUE, mode = "all")
       8.         └─lifecycle::deprecate_stop("2.2.0", "dfs(father = )", "dfs(parent = )")
       9.           └─lifecycle:::deprecate_stop0(msg)
      10.             └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
         7.       └─igraph::dfs(x, root = origin, father = TRUE, mode = "all")
         8.         └─lifecycle::deprecate_stop("2.2.0", "dfs(father = )", "dfs(parent = )")
         9.           └─lifecycle:::deprecate_stop0(msg)
        10.             └─rlang::cnd_signal(...)
       ── Error ('test-seglist.R:13:3'): convert graph to seglist ─────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: The `father` argument of `dfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
       ℹ Please use the `parent` argument instead.
       Backtrace:
           ▆
        1. ├─testthat::expect_equal(as.seglist(g), sl) at test-seglist.R:13:3
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. ├─nat::as.seglist(g)
        5. └─nat:::as.seglist.igraph(g)
        6.   └─igraph::dfs(x, root = origin, father = TRUE, mode = "all")
        7.     └─lifecycle::deprecate_stop("2.2.0", "dfs(father = )", "dfs(parent = )")
        8.       └─lifecycle:::deprecate_stop0(msg)
        9.         └─rlang::cnd_signal(...)
       
       [ FAIL 38 | WARN 2 | SKIP 6 | PASS 585 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     Backtrace:
          ▆
       1. ├─base::subset(n1, X > 240)
       2. └─nat:::subset.neuron(n1, X > 240)
       3.   └─nat::prune_vertices(x, r, invert = !invert, ...)
       4.     ├─nat::as.neuron(as.ngraph(dg), ...)
       5.     └─nat:::as.neuron.ngraph(as.ngraph(dg), ...)
       6.       ├─nat::as.seglist(masterg <- x, origin = origin, Verbose = Verbose)
       7.       └─nat:::as.seglist.igraph(masterg <- x, origin = origin, Verbose = Verbose)
       8.         └─igraph::dfs(x, root = origin, father = TRUE, mode = "all")
       9.           └─lifecycle::deprecate_stop("2.2.0", "dfs(father = )", "dfs(parent = )")
      10.             └─lifecycle:::deprecate_stop0(msg)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'neurons-intro.Rmd' failed with diagnostics:
     The `father` argument of `dfs()` was deprecated in igraph 2.2.0 and is
     now defunct.
     ℹ Please use the `parent` argument instead.
     --- failed re-building ‘neurons-intro.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘neurons-intro.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## Newly fixed

*   checking for detritus in the temp directory ... NOTE
     ```
     Found the following files/directories:
       ‘org.chromium.Chromium.lbepW8’
     ```

# nethist (1.0.0)

* GitHub: <https://github.com/EnigmaSong/nethist>
* Email: <mailto:youngseok.song@mail.wvu.edu>
* GitHub mirror: <https://github.com/cran/nethist>

Run `revdepcheck::revdep_details(, "nethist")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
           ▆
        1. ├─base::suppressMessages(...) at test_netsummary_plot.R:18:12
        2. │ └─base::withCallingHandlers(...)
        3. └─testthat::expect_no_error(...)
       ── Failure ('test_netsummary_plot.R:23:12'): netsummary_plot with sparse matrix object ──
       Expected `{ ... }` not to throw any errors.
       Actually got a <simpleError> with message:
         A is not a simple graph. All non-zero entries must be 1 (binary adjacency matrix).
       Backtrace:
           ▆
        1. ├─base::suppressMessages(...) at test_netsummary_plot.R:23:12
        2. │ └─base::withCallingHandlers(...)
        3. └─testthat::expect_no_error(...)
       ── Error ('test_summary.R:3:1'): (code run outside of `test_that()`) ───────────
       Error in `multinethist.array(array(A, dim = c(nrow(A), ncol(A), 1)), h, common_f, method, control, ...)`: Layer 1: A is not a simple graph. All non-zero entries must be 1 (binary adjacency matrix).
       Backtrace:
           ▆
        1. ├─nethist::multinethist(...) at test_summary.R:3:1
        2. └─nethist:::multinethist.matrix(...)
        3.   └─nethist:::multinethist.array(...)
       
       [ FAIL 5 | WARN 5 | SKIP 1 | PASS 210 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

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

# optbdmaeAT (1.0.2)

* Email: <mailto:diboobayu@gmail.com>
* GitHub mirror: <https://github.com/cran/optbdmaeAT>

Run `revdepcheck::revdep_details(, "optbdmaeAT")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > ### Name: graphoptbd.mae
     > ### Title: Creates the graphical layout of resultant optimal design
     > ### Aliases: graphoptbd.mae
     > ### Keywords: Graphical layout
     > 
     > ### ** Examples
     > 
     >     ##To create the graphical layout of the D-optimal block design
     >     ##obtained using the treatment exchange algorithm for 
     >     trt.N <- 10  #Number of treatments
     >     blk.N <- 10  #Number of blocks
     >     theta <- 0.2 #theta value 
     >     OptdesF <- rbind(1:10, c(2:10,1)) #D-optimal design (loop design)
     > 
     >     graphoptbd.mae(trt.N = 10, blk.N = 10, theta = 0.2, OptdesF, Optcrit = "D", cbVal2 = 0)
     Error:
     ! `tkplot()` was deprecated in igraph 3.0.0 and is now defunct.
     Backtrace:
         ▆
      1. └─optbdmaeAT::graphoptbd.mae(...)
      2.   └─igraph::tkplot(...)
      3.     └─lifecycle::deprecate_stop("3.0.0", "tkplot()")
      4.       └─lifecycle:::deprecate_stop0(msg)
      5.         └─rlang::cnd_signal(...)
     Execution halted
     ```

# optrcdmaeAT (1.0.1)

* Email: <mailto:diboobayu@gmail.com>
* GitHub mirror: <https://github.com/cran/optrcdmaeAT>

Run `revdepcheck::revdep_details(, "optrcdmaeAT")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > 
     > ### ** Examples
     > 
     >     ##To create the graphical layout of the D-optimal row-column design
     >     ##obtained using the treatment exchange algorithm for 
     >     
     >     trt.N <- 10  #Number of treatments
     >     
     >     col.N <- 10  #Number of arrays
     >     
     >     theta <- 0.2 #theta value 
     >     
     >     OptdesF <- rbind(1:10, c(2:10, 1)) #D-optimal design (loop design)
     > 
     >     graphoptrcd.mae(trt.N = 10, col.N = 10, theta = 0.2, OptdesF, Optcrit = "D", cbVal2 = 0)
     Error:
     ! `tkplot()` was deprecated in igraph 3.0.0 and is now defunct.
     Backtrace:
         ▆
      1. └─optrcdmaeAT::graphoptrcd.mae(...)
      2.   └─igraph::tkplot(...)
      3.     └─lifecycle::deprecate_stop("3.0.0", "tkplot()")
      4.       └─lifecycle:::deprecate_stop0(msg)
      5.         └─rlang::cnd_signal(...)
     Execution halted
     ```

# PANR (1.58.0)

* Email: <mailto:xin_wang@hms.harvard.edu>
* GitHub mirror: <https://github.com/cran/PANR>

Run `revdepcheck::revdep_details(, "PANR")` for more info

## Newly broken

*   checking whether package ‘PANR’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: `graph.empty()` was deprecated in igraph 2.1.0.
     See ‘<lib>/PANR.Rcheck/00install.out’ for details.
     ```

## In both

*   checking sizes of PDF files under ‘inst/doc’ ... WARNING
     ```
       ‘gs+qpdf’ made some significant size reductions:
          compacted ‘PANR-Vignette.pdf’ from 708Kb to 367Kb
       consider running tools::compactPDF(gs_quality = "ebook") on these files,
       or build the source package with --compact-vignettes=both
     ```

*   checking R code for possible problems ... NOTE
     ```
     SNR2p,BetaMixture-numeric_Or_integer: no visible global function
       definition for ‘runif’
     SNR2p,BetaMixture-numeric_Or_integer: no visible global function
       definition for ‘pbeta’
     p2SNR,BetaMixture-numeric_Or_integer: no visible global function
       definition for ‘qbeta’
     Undefined global functions or variables:
       pbeta qbeta runif
     Consider adding
       importFrom("stats", "pbeta", "qbeta", "runif")
     to your NAMESPACE file.
     ```

*   checking Rd files ... NOTE
     ```
     ...
            |                                                      ^
     checkRd: (-1) buildPAN.Rd:27: Lost braces
         27 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) exportPAN.Rd:34: Lost braces
         34 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) fitBM.Rd:28: Lost braces
         28 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) fitNULL.Rd:37: Lost braces
         37 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) infer.Rd:27: Lost braces
         27 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) pvclustModule.Rd:38: Lost braces
         38 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) viewNestedModules.Rd:30: Lost braces
         30 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     checkRd: (-1) viewPAN.Rd:33: Lost braces
         33 | a logical value to switch on (if \code{TRUE}) or off {if \code{FALSE}} detailed
            |                                                      ^
     ```

# phyloseq (1.56.0)

* GitHub: <https://github.com/joey711/phyloseq>
* Email: <mailto:joey711@gmail.com>
* GitHub mirror: <https://github.com/cran/phyloseq>

Run `revdepcheck::revdep_details(, "phyloseq")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > data(enterotype)
     > plot_net(enterotype, color="SeqTech", maxdist = 0.3)
     Warning: `graph.data.frame()` was deprecated in igraph 2.0.0.
     ℹ Please use `graph_from_data_frame()` instead.
     ℹ The deprecated feature was likely used in the phyloseq package.
       Please report the issue at <https://github.com/joey711/phyloseq/issues>.
     > plot_net(enterotype, color="SeqTech", maxdist = 0.3, laymeth = "auto")
     Warning: `layout.auto()` was deprecated in igraph 2.0.0.
     ℹ Please use `layout_nicely()` instead.
     ℹ The deprecated feature was likely used in the phyloseq package.
       Please report the issue at <https://github.com/joey711/phyloseq/issues>.
     > plot_net(enterotype, color="SeqTech", maxdist = 0.3, laymeth = "svd")
     Error:
     ! `layout.svd()` was deprecated in igraph 2.1.0 and is now defunct.
     ℹ Please use `layout_with_fr()` instead.
     Backtrace:
         ▆
      1. └─phyloseq::plot_net(...)
      2.   └─phyloseq (local) vertex_layout(LinksData0, physeq, type, available_layouts[[laymeth]])
      3.     ├─data.table::data.table(...)
      4.     └─igraph (local) laymeth(g, ...)
      5.       └─lifecycle::deprecate_stop("2.1.0", "layout.svd()", "layout_with_fr()")
      6.         └─lifecycle:::deprecate_stop0(msg)
      7.           └─rlang::cnd_signal(...)
     Execution halted
     ```

## In both

*   checking for hidden files and directories ... NOTE
     ```
     Found the following hidden files and directories:
       .travis.yml
     These were most likely included in error. See section ‘Package
     structure’ in the ‘Writing R Extensions’ manual.
     ```

*   checking top-level files ... NOTE
     ```
     Non-standard files/directories found at top level:
       ‘README.html’ ‘TODO.txt’
     ```

*   checking R code for possible problems ... NOTE
     ```
     Found if() conditions comparing class() to string:
     File ‘phyloseq/R/IO-methods.R’: if (class(tree) == "phylo") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "dist") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "character") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "dist") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "character") ...
     File ‘phyloseq/R/ordination-methods.R’: if (class(distance) == "character") ...
     File ‘phyloseq/R/plot-methods.R’: if (class(DF[, key.var]) == "factor") ...
     Use inherits() (or maybe is()) instead.
     ```

*   checking Rd line widths ... NOTE
     ```
     ...
          p0 = plot_heatmap(gpac, sample.label="SampleType", taxa.label="Family", taxa.order="Phylum", sample.order="SampleType")
          p1 = plot_heatmap(gpac, method=NULL, sample.label="SampleType", taxa.label="Family", taxa.order="Phylum", sample.order="SampleType")
          # Example: Order matters. Random ordering of OTU indices is difficult to interpret, even with structured sample order
          plot_heatmap(gpac, method=NULL, sample.label="SampleType", taxa.label="Family", taxa.order=rando, sample.order="SampleType")
          plot_heatmap(gpac, taxa.order="Family", sample.order="SampleType", first.taxa="546313", first.sample="NP2")
          plot_heatmap(gpac, sample.label="SampleType", taxa.label="Family", taxa.order="Family", sample.order="SampleType", first.taxa="546313", ... [TRUNCATED]
     
     Rd file 'plot_richness.Rd':
       \examples lines wider than 100 characters:
          plot_richness(GlobalPatterns, x="SampleType", measures=c("Chao1", "ACE", "InvSimpson"), nrow=3, sortby = "Chao1")
     
     Rd file 'prune_samples-methods.Rd':
       \examples lines wider than 100 characters:
           # (p <- plot_tree(GP.chl, color="SampleType", shape="Family", label.tips="Genus", size="abundance"))
     
     Rd file 'tip_glom.Rd':
       \examples lines wider than 100 characters:
          plot_tree(tip_glom(esophagus, h=0.2), label.tips="taxa_names", size="abundance", title="After tip_glom()")
     
     Rd file 'tree_layout.Rd':
       \examples lines wider than 100 characters:
          p0 = ggplot(treeSegs0$edgeDT, edgeMap) + geom_segment() + geom_segment(vertMap, data=treeSegs0$vertDT)
          p1 = ggplot(treeSegs1$edgeDT, edgeMap) + geom_segment() + geom_segment(vertMap, data=treeSegs1$vertDT)
     
     These lines will be truncated in the PDF manual.
     ```

*   checking Rd cross-references ... NOTE
     ```
     Found the following Rd file(s) with Rd \link{} targets missing package
     anchors:
       UniFrac-methods.Rd: foreach-package
       distance.Rd: designdist
       import_biom.Rd: foreach
       import_qiime_otu_tax.Rd: foreach-package
       import_uparse.Rd: data.table
       ordinate.Rd: cca, rda
       phyloseq.Rd: ape-package
       plot_bar.Rd: melt, ggplot, qplot
       plot_heatmap.Rd: log_trans, ggplot
       plot_net.Rd: igraph-package, ggplot, ggsave
       plot_network.Rd: ggplot
       plot_ordination.Rd: ggplot
       plot_richness.Rd: ggplot
       plot_scree.Rd: ggplot
       plot_tree.Rd: ape, ggplot, plot.phylo
       subset_ord_plot.Rd: ggplot
       tree_layout.Rd: data.table, ape-package
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

# PPInfer (1.38.0)

* Email: <mailto:dmdmjung@gmail.com>
* GitHub mirror: <https://github.com/cran/PPInfer>

Run `revdepcheck::revdep_details(, "PPInfer")` for more info

## Newly broken

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
                    not set up for use with LaTeX.
     
     See the LaTeX manual or LaTeX Companion for explanation.
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
                    not set up for use with LaTeX.
     
     See the LaTeX manual or LaTeX Companion for explanation.
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
                    not set up for use with LaTeX.
     
     See the LaTeX manual or LaTeX Companion for explanation.
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
           
     --- failed re-building ‘PPInfer.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘PPInfer.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# R6causal (0.8.3)

* Email: <mailto:juha.karvanen@iki.fi>
* GitHub mirror: <https://github.com/cran/R6causal>

Run `revdepcheck::revdep_details(, "R6causal")` for more info

## Newly broken

*   checking whether package ‘R6causal’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: `set.edge.attribute()` was deprecated in igraph 2.0.0.
       Warning: `induced.subgraph()` was deprecated in igraph 2.0.0.
       Warning: `get.vertex.attribute()` was deprecated in igraph 2.0.0.
     See ‘<lib>/R6causal.Rcheck/00install.out’ for details.
     ```

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     Error(s) in re-building vignettes:
       ...
     --- re-building ‘using_R6causal.Rmd’ using rmarkdown
     ! LaTeX Error: File `lmodern.sty' not found.
     
     ! Emergency stop.
     <read *> 
     
     Error: processing vignette 'using_R6causal.Rmd' failed with diagnostics:
     LaTeX failed to compile using_R6causal.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See using_R6causal.log for more info.
     --- failed re-building ‘using_R6causal.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘using_R6causal.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# scistreer (1.2.1)

* GitHub: <https://github.com/kharchenkolab/scistreer>
* Email: <mailto:tgaoteng@gmail.com>
* GitHub mirror: <https://github.com/cran/scistreer>

Run `revdepcheck::revdep_details(, "scistreer")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     ℹ Please use the `parent` argument instead.
     Backtrace:
          ▆
       1. ├─scistreer::annotate_tree(tree_small, P_small)
       2. │ └─scistreer::mut_to_tree(gtree, mut_nodes)
       3. │   └─... %>% ...
       4. ├─dplyr::mutate(., GT = ifelse(GT == "" & !is.na(site), site, GT))
       5. ├─dplyr::mutate(...)
       6. ├─tidygraph:::mutate.tbl_graph(...)
       7. │ └─tidygraph::mutate_as_tbl(.data, !!!dot)
       8. │   ├─dplyr::mutate(d_tmp, ...)
       9. │   └─dplyr:::mutate.data.frame(d_tmp, ...)
      10. │     └─dplyr:::mutate_cols(.data, dplyr_quosures(...), by)
      11. │       ├─base::withCallingHandlers(...)
      12. │       └─dplyr:::mutate_col(dots[[i]], data, mask, new_columns)
      13. │         └─mask$eval_all_mutate(quo)
      14. │           └─dplyr (local) eval()
      15. ├─base::unlist(...)
      16. └─tidygraph::map_bfs(...)
      17.   └─tidygraph:::bfs_df(graph, root, mode, unreachable)
      18.     └─igraph::bfs(...)
      19.       └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      20.         └─lifecycle:::deprecate_stop0(msg)
      21.           └─rlang::cnd_signal(...)
     Execution halted
     ```

## In both

*   checking whether package ‘scistreer’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       'Rcpp:::LdFlags' has not been needed since 2013 (!!) and may get removed in 2027. Please update your 'Makevars'.
       'RcppLdFlags' has not been needed since 2013 (!!) and may get removed in 2027. Please update your 'Makevars'.
     See ‘<lib>/scistreer.Rcheck/00install.out’ for details.
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘Rcpp’
       All declared Imports should be used.
     ```

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

# SEMgraph (1.2.4)

* GitHub: <https://github.com/fernandoPalluzzi/SEMgraph>
* Email: <mailto:barbara.tarantino01@universitadipavia.it>
* GitHub mirror: <https://github.com/cran/SEMgraph>

Run `revdepcheck::revdep_details(, "SEMgraph")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
       Please report the issue at <https://github.com/igraph/rigraph/issues>.
     > plot(dag0$dag, layout=layout.circle, main = "Output DAG")
     Warning: vertex attribute color contains NAs. Replacing with default value 1
     > plot(dag0$dag.old, layout=layout.circle, main = "Inferred old edges")
     Warning: vertex attribute color contains NAs. Replacing with default value 1
     > plot(dag0$dag.new, layout=layout.circle, main = "Inferred new edges")
     Warning: vertex attribute color contains NAs. Replacing with default value 1
     > par(old.par)
     > 
     > # Four DAG estimation
     > dag1 <- SEMdag(ig, X, LO="TO")
     WARNING: input graph is not acyclic !
      Applying graph -> DAG conversion...
     DAG conversion : TRUE
     Node Linear Ordering with TO setting
     
     > dag2 <- SEMdag(ig, X, LO="TL")
     WARNING: input graph is not acyclic !
      Applying graph -> DAG conversion...
     DAG conversion : TRUE
     Node Linear Ordering with TL setting
     
     Error in l2[[L]] : subscript out of bounds
     Calls: SEMdag -> getParents -> buildLevels
     Execution halted
     ```

# sfclust (1.1.0)

* GitHub: <https://github.com/ErickChacon/sfclust>
* Email: <mailto:erick.chaconmontalvan@wur.nl>
* GitHub mirror: <https://github.com/cran/sfclust>

Run `revdepcheck::revdep_details(, "sfclust")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       `expected@x`: 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00            ...
       
       ── Failure ('test-generate-clusters.R:158:3'): genclust: stars with raster ─────
       Expected `as_adjacency_matrix(clust$mst)` to equal `as(A, "generalMatrix")`.
       Differences:
         `actual@x`: 0.77 0.77 0.07 0.07 0.13 0.76 0.54 0.40 0.54 0.44 and 12 more...
       `expected@x`: 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00            ...
       
       ── Failure ('test-generate-clusters.R:180:3'): genclust: stars with raster and NA cells ──
       Expected `as_adjacency_matrix(clust$graph)` to equal `as(A, "generalMatrix")`.
       Differences:
         `actual@x`: 0.46 0.17 0.31 0.46 0.17 0.15 0.35 0.31 0.35 0.19 and 20 more...
       `expected@x`: 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00            ...
       
       ── Failure ('test-generate-clusters.R:186:3'): genclust: stars with raster and NA cells ──
       Expected `as_adjacency_matrix(clust$mst)` to equal `as(A, "generalMatrix")`.
       Differences:
         `actual@x`: 0.46 0.17 0.46 0.17 0.15 0.35 0.35 0.19 0.00 0.15 and 12 more...
       `expected@x`: 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00            ...
       
       
       [ FAIL 11 | WARN 0 | SKIP 8 | PASS 119 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# singleCellTK (2.22.0)

* GitHub: <https://github.com/compbiomed/singleCellTK>
* Email: <mailto:camp@bu.edu>
* GitHub mirror: <https://github.com/cran/singleCellTK>

Run `revdepcheck::revdep_details(, "singleCellTK")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > ### Title: Run EnrichR on SCE object
     > ### Aliases: runEnrichR
     > 
     > ### ** Examples
     > 
     > data("mouseBrainSubsetSCE")
     > if (Biobase::testBioCConnection()) {
     +   mouseBrainSubsetSCE <- runEnrichR(mouseBrainSubsetSCE, features =  c("Vamp7","Cntn2","Olig1"),
     +                                     db = "GO_Cellular_Component_2025",
     +                                     analysisName = "analysis1")
     + }
     Warning in readLines(biocURL) :
       incomplete final line found on 'http://www.bioconductor.org/main.html'
     Welcome to enrichR
     Checking connections ... 
     Server error: (503) Service Unavailable
     Enrichr ... Server error: (503) Service Unavailable
     FlyEnrichr ... Server error: (503) Service Unavailable
     WormEnrichr ... YeastEnrichr ... Connection is Live!
     FishEnrichr ... Connection is Live!
     OxEnrichr ... Connection is Live!
     Server error: (503) Service Unavailable
     Error in runEnrichR(mouseBrainSubsetSCE, features = c("Vamp7", "Cntn2",  : 
       Database(s) GO_Cellular_Component_2025 were not found in Enrichr.
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
       [----|----|----|----|----|----|----|----|----|----|
       **************************************************|
       0%   10   20   30   40   50   60   70   80   90   100%
       [----|----|----|----|----|----|----|----|----|----|
       **************************************************|
       0%   10   20   30   40   50   60   70   80   90   100%
       [----|----|----|----|----|----|----|----|----|----|
       **************************************************|
       Performing log-normalization
       0%   10   20   30   40   50   60   70   80   90   100%
       [----|----|----|----|----|----|----|----|----|----|
       **************************************************|
       [ FAIL 1 | WARN 85 | SKIP 0 | PASS 223 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-enrichment.R:46:5'): Testing correct function usage ────────────
       Error in `runEnrichR(sce, rownames(sce)[1:5], "analysis2", featureName = "feature_name", db = "HDSigDB_Human_2021")`: Database(s) HDSigDB_Human_2021 were not found in Enrichr.
       Backtrace:
           ▆
        1. └─singleCellTK::runEnrichR(...) at test-enrichment.R:46:5
       
       [ FAIL 1 | WARN 85 | SKIP 0 | PASS 223 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## Newly fixed

*   checking examples ... WARNING
     ```
     ...
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in fitTrendVar(fm, fv, ...) : 'fitTrendVar' is deprecated.
       Warning in .local(x, ...) : 'pairwiseWilcox' is deprecated.
       Warning in .local(x, ...) : 'pairwiseWilcox' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'sumCountsAcrossCells' is deprecated.
       Warning in .local(x, ...) : 'summarizeAssayByGroup' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in fitTrendVar(fm, fv, ...) : 'fitTrendVar' is deprecated.
       Warning in .local(x, ...) : 'aggregateAcrossCells' is deprecated.
       Warning in .local(x, ...) : 'aggregateAcrossCells' is deprecated.
       Warning in .local(x, ...) : 'aggregateAcrossCells' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in fitTrendVar(fm, fv, ...) : 'fitTrendVar' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
     Deprecated functions may be defunct as soon as of the next release of
     R.
     See ?Deprecated.
     ```

## In both

*   checking dependencies in R code ... WARNING
     ```
     Missing or unexported object: 'harmony::HarmonyMatrix'
     ```

*   checking Rd cross-references ... WARNING
     ```
     ...
       runTSCAN.Rd: SingleCellExperiment-class
       runTSCANClusterDEAnalysis.Rd: SingleCellExperiment-class
       runTSCANDEG.Rd: SingleCellExperiment-class
       runTSNE.Rd: SingleCellExperiment-class
       runUMAP.Rd: SingleCellExperiment-class, BiocParallelParam-class
       runVAM.Rd: SingleCellExperiment-class
       runZINBWaVE.Rd: SingleCellExperiment-class, colData,
         BiocParallelParam-class
       sampleSummaryStats.Rd: SingleCellExperiment-class, assay, colData
       scaterPCA.Rd: SingleCellExperiment-class, BiocParallelParam-class
       scaterlogNormCounts.Rd: logNormCounts
       sctkListGeneSetCollections.Rd: GeneSetCollection-class
       sctkPythonInstallConda.Rd: conda_install, reticulate, conda_create
       sctkPythonInstallVirtualEnv.Rd: virtualenv_install, reticulate,
         virtualenv_create
       selectSCTKConda.Rd: reticulate
       selectSCTKVirtualEnvironment.Rd: reticulate
       setRowNames.Rd: SingleCellExperiment-class
       setSCTKDisplayRow.Rd: SingleCellExperiment-class
       singleCellTK.Rd: SingleCellExperiment-class
       subsetSCECols.Rd: SingleCellExperiment-class
       subsetSCERows.Rd: SingleCellExperiment-class, altExp
       summarizeSCE.Rd: SingleCellExperiment-class
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

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

# SpaDES.core (3.2.1)

* GitHub: <https://github.com/PredictiveEcology/SpaDES.core>
* Email: <mailto:eliot.mcintire@canada.ca>
* GitHub mirror: <https://github.com/cran/SpaDES.core>

Run `revdepcheck::revdep_details(, "SpaDES.core")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error in `if (grepl("In .+:", w$message)) {     warningSplitOnColon(w)     invokeRestart("muffleWarning") }`: the condition has length > 1
       Backtrace:
            ▆
         1. ├─SpaDES.core::simInit() at test-Copy.R:4:3
         2. ├─SpaDES.core::simInit()
         3. │ ├─SpaDES.core::simInit(...)
         4. │ └─SpaDES.core::simInit(...)
         5. │   ├─base::withCallingHandlers(...)
         6. │   └─SpaDES.core:::resolveDepsRunInitIfPoss(...)
         7. │     ├─SpaDES.core::.depsLoadOrder(sim, depsGr)
         8. │     └─SpaDES.core::.depsLoadOrder(sim, depsGr)
         9. │       └─igraph::topo_sort(simGraph, "out")
        10. │         └─lifecycle::deprecate_soft(...)
        11. │           └─lifecycle:::deprecate_warn0(...)
        12. │             ├─base::withRestarts(...)
        13. │             │ └─base (local) withOneRestart(expr, restarts[[1L]])
        14. │             │   └─base (local) doWithOneRestart(return(expr), restart)
        15. │             └─base::signalCondition(wrn)
        16. └─SpaDES.core (local) `<fn>`(`<lfcycl__>`)
       
       [ FAIL 1 | WARN 0 | SKIP 180 | PASS 1443 ]
       Error:
       ! Test failures.
       Execution halted
       Ran 1/1 deferred expressions
     ```

# STRINGdb (2.24.1)

* Email: <mailto:damian.szklarczyk@imls.uzh.ch>
* GitHub mirror: <https://github.com/cran/STRINGdb>

Run `revdepcheck::revdep_details(, "STRINGdb")` for more info

## Newly broken

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
                    not set up for use with LaTeX.
     
     See the LaTeX manual or LaTeX Companion for explanation.
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
                    not set up for use with LaTeX.
     
     See the LaTeX manual or LaTeX Companion for explanation.
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
                    not set up for use with LaTeX.
     
     See the LaTeX manual or LaTeX Companion for explanation.
     Type  H <return>  for immediate help.
     ! LaTeX Error: Unicode character ─ (U+2500)
          
     --- failed re-building ‘STRINGdb.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘STRINGdb.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

## In both

*   checking sizes of PDF files under ‘inst/doc’ ... WARNING
     ```
       ‘gs+qpdf’ made some significant size reductions:
          compacted ‘STRINGdb.pdf’ from 3292Kb to 581Kb
       consider running tools::compactPDF(gs_quality = "ebook") on these files,
       or build the source package with --compact-vignettes=both
     ```

*   checking Rd line widths ... NOTE
     ```
     ...
     Rd file 'get_link.Rd':
       \usage lines wider than 90 characters:
          get_link(string_ids=NULL, required_score=NULL, network_flavor="evidence", payload_id=NULL, network_term_id=NULL, hide_node_labels=NULL, ... [TRUNCATED]
     
     Rd file 'get_png.Rd':
       \usage lines wider than 90 characters:
          get_png(string_ids=NULL, required_score=NULL, network_flavor="evidence", file=NULL, payload_id=NULL, output_format="image", network_ter ... [TRUNCATED]
     
     Rd file 'map.Rd':
       \usage lines wider than 90 characters:
          map(my_data_frame, my_data_frame_id_col_names, takeFirst=TRUE, removeUnmappedRows=FALSE, quiet=FALSE, usePreferredSources=TRUE)
     
     Rd file 'multi_map_df.Rd':
       \usage lines wider than 90 characters:
          multi_map_df(dfToMap, dfMap, strColsFrom, strColFromDfMap, strColToDfMap, caseSensitive=FALSE)
     
     Rd file 'plot_network.Rd':
       \usage lines wider than 90 characters:
          plot_network(string_ids, payload_id=NULL, required_score=NULL, add_link=FALSE, network_flavor="evidence", add_summary=TRUE, typed_physi ... [TRUNCATED]
     
     Rd file 'post_payload.Rd':
       \usage lines wider than 90 characters:
          post_payload(stringIds, colors=NULL, comments=NULL, links=NULL, iframe_urls=NULL, logo_imgF=NULL, legend_imgF=NULL )
     
     These lines will be truncated in the PDF manual.
     ```

# tidygraph (1.3.1)

* GitHub: <https://github.com/thomasp85/tidygraph>
* Email: <mailto:thomasp85@gmail.com>
* GitHub mirror: <https://github.com/cran/tidygraph>

Run `revdepcheck::revdep_details(, "tidygraph")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     Caused by error:
     ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is
       now defunct.
     ℹ Please use the `parent` argument instead.
     Backtrace:
          ▆
       1. ├─... %>% ...
       2. ├─dplyr::mutate(...)
       3. ├─tidygraph:::mutate.tbl_graph(...)
       4. │ └─tidygraph::mutate_as_tbl(.data, !!!dot)
       5. │   ├─dplyr::mutate(d_tmp, ...)
       6. │   └─dplyr:::mutate.data.frame(d_tmp, ...)
       7. │     └─dplyr:::mutate_cols(.data, dplyr_quosures(...), by)
       8. │       ├─base::withCallingHandlers(...)
       9. │       └─dplyr:::mutate_col(dots[[i]], data, mask, new_columns)
      10. │         └─mask$eval_all_mutate(quo)
      11. │           └─dplyr (local) eval()
      12. └─tidygraph::map_bfs_dbl(...)
      13.   └─tidygraph::map_bfs(...)
      14.     └─tidygraph:::bfs_df(graph, root, mode, unreachable)
      15.       └─igraph::bfs(...)
      16.         └─lifecycle::deprecate_stop("2.2.0", "bfs(father = )", "bfs(parent = )")
      17.           └─lifecycle:::deprecate_stop0(msg)
      18.             └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking tests ... ERROR
     ```
     ...
        8.         └─lifecycle:::deprecate_stop0(msg)
        9.           └─rlang::cnd_signal(...)
       ── Error ('test-search.R:9:3'): search returns correct type ────────────────────
       <dplyr:::mutate_error/rlang_error/error/condition>
       Error in `mutate(d_tmp, ...)`: i In argument: `val = fn`.
       Caused by error:
       ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       ── Error ('test-search.R:22:3'): search returns correct length ─────────────────
       <dplyr:::mutate_error/rlang_error/error/condition>
       Error in `mutate(d_tmp, ...)`: i In argument: `val = fn`.
       Caused by error:
       ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       ── Error ('test-search.R:36:3'): search returns correct length ─────────────────
       <dplyr:::mutate_error/rlang_error/error/condition>
       Error in `mutate(d_tmp, ...)`: i In argument: `val = fn`.
       Caused by error:
       ! The `father` argument of `bfs()` was deprecated in igraph 2.2.0 and is now defunct.
       i Please use the `parent` argument instead.
       
       [ FAIL 6 | WARN 55 | SKIP 1 | PASS 423 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘iterate.Rd’ ‘random_walk_rank.Rd’
     ```

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

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

# vkR (0.2)

* GitHub: <https://github.com/Dementiy/vkR>
* Email: <mailto:dementiy@yandex.ru>
* GitHub mirror: <https://github.com/cran/vkR>

Run `revdepcheck::revdep_details(, "vkR")` for more info

## Newly broken

*   checking dependencies in R code ... WARNING
     ```
     Missing or unexported object: ‘igraph::get.edge’
     ```

