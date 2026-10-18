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

