# pcalg (2.7-12)

* Email: <mailto:kalisch@stat.math.ethz.ch>
* GitHub mirror: <https://github.com/cran/pcalg>

Run `revdepcheck::revdep_details(, "pcalg")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > 
       > ## Minimal checks on graphs generated via igraph
       > stopifnot( require("graph") )
       > set.seed(37)
       > dagList <- vector(mode = "list", length = 6)
       > dagList[[1]] <- randDAG(10, 4, "regular")
       > dagList[[2]] <- randDAG(10, 4, "watts")
       > dagList[[3]] <- randDAG(10, 4, "er")
       > dagList[[4]] <- randDAG(10, 4, "bipartite")
       > dagList[[5]] <- randDAG(10, 4, "geometric")
       > dagList[[6]] <- randDAG(10, 4, "interEr", par2 = 0.5)
       > 
       > ## number of nodes
       > stopifnot(all.equal(
       +   sapply(dagList, numNodes),
       +   rep(10,6)
       + ))
       > ## number of edges
       > stopifnot(all.equal(
       +   sapply(dagList, numEdges),
       +   c(20,20,16,15,10,18)
       + ))
       Error: sapply(dagList, numEdges) and c(20, 20, 16, 15, 10, 18) are not equal:
         Mean relative difference: 0.125
       Execution halted
     ```

## In both

*   checking compilation flags used ... NOTE
     ```
     Compilation used the following non-portable flag(s):
       ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
     ```

