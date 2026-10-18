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

