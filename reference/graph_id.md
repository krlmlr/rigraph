# Get the id of a graph

Graph ids are used to check that a vertex or edge sequence belongs to a
graph. If you create a new graph by changing the structure of a graph,
the new graph will have a new id. Changing the attributes will not
change the id.

## Usage

``` r
graph_id(x, ...)
```

## Arguments

- x:

  A graph or a vertex sequence or an edge sequence.

- ...:

  Not used currently.

## Value

The id of the graph, a character scalar. For vertex and edge sequences
the id of the graph they were created from.

## Examples

``` r
g <- make_ring(10)
graph_id(g)
#> [1] "4aa2c759-e1f0-457b-9d96-fdf2be5317e3"
graph_id(V(g))
#> [1] "4aa2c759-e1f0-457b-9d96-fdf2be5317e3"
graph_id(E(g))
#> [1] "4aa2c759-e1f0-457b-9d96-fdf2be5317e3"

g2 <- g + 1
graph_id(g2)
#> [1] "e23de803-4f9e-4d1c-b97b-25b4d6f47bc7"
```
