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
#> [1] "b93cd747-f209-4dd4-859d-277adb6fca50"
graph_id(V(g))
#> [1] "b93cd747-f209-4dd4-859d-277adb6fca50"
graph_id(E(g))
#> [1] "b93cd747-f209-4dd4-859d-277adb6fca50"

g2 <- g + 1
graph_id(g2)
#> [1] "6d4a9667-5b92-4074-8ea8-e2a6402b0bd7"
```
