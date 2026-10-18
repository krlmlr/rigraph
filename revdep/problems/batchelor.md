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

