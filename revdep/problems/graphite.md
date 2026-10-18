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

