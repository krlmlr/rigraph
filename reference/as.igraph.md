# Conversion to igraph

These functions convert various objects to igraph graphs.

## Usage

``` r
as.igraph(x, ...)
```

## Arguments

- x:

  The object to convert.

- ...:

  Additional arguments. None currently.

## Value

All these functions return an igraph graph.

## Details

You can use `as.igraph()` to convert various objects to igraph graphs.
Right now the following objects are supported:

- codeigraphHRG These objects are created by the
  [`fit_hrg()`](https://r.igraph.org/reference/fit_hrg.md) and
  [`consensus_tree()`](https://r.igraph.org/reference/consensus_tree.md)
  functions.

## Related documentation in the C library

[`create()`](https://igraph.org/c/html/0.10.17/igraph-Generators.html#igraph_create),
[`vcount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_vcount),
[`famous()`](https://igraph.org/c/html/0.10.17/igraph-Generators.html#igraph_famous),
[`empty()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_empty),
[`simplify()`](https://igraph.org/c/html/0.10.17/igraph-Operators.html#igraph_simplify)

## Author

Gabor Csardi <csardi.gabor@gmail.com>.

## Examples

``` r

g <- make_full_graph(5) + make_full_graph(5)
hrg <- fit_hrg(g)
as.igraph(hrg)
#> IGRAPH f3a0762 DN-- 19 18 -- Fitted HRG
#> + attr: name (g/c), name (v/c), prob (v/n)
#> + edges from f3a0762 (vertex names):
#>  [1] g1->g2 g2->g5 g3->g6 g4->8  g5->g8 g6->6  g7->2  g8->1  g9->7  g1->g3
#> [11] g2->5  g3->g9 g4->9  g5->3  g6->10 g7->4  g8->g7 g9->g4
```
