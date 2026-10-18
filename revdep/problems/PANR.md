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

