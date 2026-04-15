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
#> [1] "8c45c0eb-0c6d-4438-b682-4388f485e284"
graph_id(V(g))
#> [1] "8c45c0eb-0c6d-4438-b682-4388f485e284"
graph_id(E(g))
#> [1] "8c45c0eb-0c6d-4438-b682-4388f485e284"

g2 <- g + 1
graph_id(g2)
#> [1] "fd24523f-9171-4212-83a1-748b59ce9f7b"
```
