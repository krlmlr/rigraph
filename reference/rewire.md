# Rewiring edges of a graph

See the links below for the implemented rewiring methods.

## Usage

``` r
rewire(graph, with)
```

## Arguments

- graph:

  The graph to rewire

- with:

  A function call to one of the rewiring methods, see details below.

## Value

The rewired graph.

## See also

Other rewiring functions:
[`each_edge()`](https://r.igraph.org/reference/each_edge.md),
[`keeping_degseq()`](https://r.igraph.org/reference/keeping_degseq.md)

## Examples

``` r
g <- make_ring(10)
g %>%
  rewire(each_edge(p = .1, loops = FALSE)) %>%
  plot(layout = layout_in_circle)

print_all(rewire(g, with = keeping_degseq(niter = vcount(g) * 10)))
#> IGRAPH 5fdbe3c U--- 10 10 -- Ring graph
#> + attr: name (g/c), mutual (g/l), circular (g/l)
#> + graph attributes:
#> | + name:
#> |   [1] "Ring graph"
#> | + mutual:
#> |   [1] FALSE
#> | + circular:
#> |   [1] TRUE
#> + edges from 5fdbe3c:
#>  [1] 1-- 8 4-- 7 1-- 3 4-- 5 6-- 9 2-- 9 3-- 7 2-- 6 5--10 8--10
```
