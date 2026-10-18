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

