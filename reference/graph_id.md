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
#> [1] "61155c3b-4ec2-4170-97b8-64e8de77084b"
graph_id(V(g))
#> [1] "61155c3b-4ec2-4170-97b8-64e8de77084b"
graph_id(E(g))
#> [1] "61155c3b-4ec2-4170-97b8-64e8de77084b"

g2 <- g + 1
graph_id(g2)
#> [1] "c6129290-0749-42f9-8e72-2a9d531cf8f5"
```
