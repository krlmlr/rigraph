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

