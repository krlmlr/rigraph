# Convert a graph to an adjacency matrix

Sometimes it is useful to work with a standard representation of a
graph, like an adjacency matrix.

## Usage

``` r
as_adjacency_matrix(
  graph,
  type = c("both", "upper", "lower"),
  attr = NULL,
  edges = deprecated(),
  names = TRUE,
  sparse = igraph_opt("sparsematrices")
)
```

## Arguments

- graph:

  The graph to convert.

- type:

  Gives how to create the adjacency matrix for undirected graphs. It is
  ignored for directed graphs. Possible values: `upper`: the upper right
  triangle of the matrix is used, `lower`: the lower left triangle of
  the matrix is used. `both`: the whole matrix is used, a symmetric
  matrix is returned.

- attr:

  Either `NULL` or a character string giving an edge attribute name. If
  `NULL` a traditional adjacency matrix is returned. If not `NULL` then
  the values of the given edge attribute are included in the adjacency
  matrix. If the graph has multiple edges, the edge attribute of an
  arbitrarily chosen edge (for the multiple edges) is included. This
  argument is ignored if `edges` is `TRUE`.

  Note that this works only for certain attribute types. If the `sparse`
  argumen is `TRUE`, then the attribute must be either logical or
  numeric. If the `sparse` argument is `FALSE`, then character is also
  allowed. The reason for the difference is that the `Matrix` package
  does not support character sparse matrices yet.

- edges:

  **\[deprecated\]** Logical scalar, whether to return the edge ids in
  the matrix. For non-existant edges zero is returned.

- names:

  Logical constant, whether to assign row and column names to the
  matrix. These are only assigned if the `name` vertex attribute is
  present in the graph.

- sparse:

  Logical scalar, whether to create a sparse matrix. The ‘`Matrix`’
  package must be installed for creating sparse matrices.

## Value

A `vcount(graph)` by `vcount(graph)` (usually) numeric matrix.

## Details

`as_adjacency_matrix()` returns the adjacency matrix of a graph, a
regular matrix if `sparse` is `FALSE`, or a sparse matrix, as defined in
the ‘`Matrix`’ package, if `sparse` if `TRUE`.

## Related documentation in the C library

[`get_adjacency()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_get_adjacency),
[`get_adjacency_sparse()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_get_adjacency_sparse),
[`vcount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_vcount),
[`edges()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_edges),
[`get_eids()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_get_eids),
[`ecount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_ecount)

## See also

[`graph_from_adjacency_matrix()`](https://r.igraph.org/reference/graph_from_adjacency_matrix.md),
[`read_graph()`](https://r.igraph.org/reference/read_graph.md)

Other conversion:
[`as.matrix.igraph()`](https://r.igraph.org/reference/as.matrix.igraph.md),
[`as_adj_list()`](https://r.igraph.org/reference/as_adj_list.md),
[`as_biadjacency_matrix()`](https://r.igraph.org/reference/as_biadjacency_matrix.md),
[`as_data_frame()`](https://r.igraph.org/reference/graph_from_data_frame.md),
[`as_directed()`](https://r.igraph.org/reference/as_directed.md),
[`as_edgelist()`](https://r.igraph.org/reference/as_edgelist.md),
[`as_graphnel()`](https://r.igraph.org/reference/as_graphnel.md),
[`as_long_data_frame()`](https://r.igraph.org/reference/as_long_data_frame.md),
[`graph_from_adj_list()`](https://r.igraph.org/reference/graph_from_adj_list.md),
[`graph_from_graphnel()`](https://r.igraph.org/reference/graph_from_graphnel.md)

## Examples

``` r

g <- sample_gnp(10, 2 / 10)
as_adjacency_matrix(g)
#> 10 x 10 sparse Matrix of class "dgCMatrix"
#>                          
#>  [1,] . . . . . . . . 1 1
#>  [2,] . . . . . . . 1 . .
#>  [3,] . . . . . . . . . .
#>  [4,] . . . . 1 . . . . .
#>  [5,] . . . 1 . . 1 . . .
#>  [6,] . . . . . . 1 . . 1
#>  [7,] . . . . 1 1 . 1 . .
#>  [8,] . 1 . . . . 1 . . .
#>  [9,] 1 . . . . . . . . .
#> [10,] 1 . . . . 1 . . . .
V(g)$name <- letters[1:vcount(g)]
as_adjacency_matrix(g)
#> 10 x 10 sparse Matrix of class "dgCMatrix"
#>   [[ suppressing 10 column names ‘a’, ‘b’, ‘c’ ... ]]
#>                      
#> a . . . . . . . . 1 1
#> b . . . . . . . 1 . .
#> c . . . . . . . . . .
#> d . . . . 1 . . . . .
#> e . . . 1 . . 1 . . .
#> f . . . . . . 1 . . 1
#> g . . . . 1 1 . 1 . .
#> h . 1 . . . . 1 . . .
#> i 1 . . . . . . . . .
#> j 1 . . . . 1 . . . .
E(g)$weight <- runif(ecount(g))
as_adjacency_matrix(g, attr = "weight")
#> 10 x 10 sparse Matrix of class "dgCMatrix"
#>   [[ suppressing 10 column names ‘a’, ‘b’, ‘c’ ... ]]
#>                                                                             
#> a .          .         . .         .          .         .          .        
#> b .          .         . .         .          .         .          0.5305231
#> c .          .         . .         .          .         .          .        
#> d .          .         . .         0.44746489 .         .          .        
#> e .          .         . 0.4474649 .          .         0.01517073 .        
#> f .          .         . .         .          .         0.38657883 .        
#> g .          .         . .         0.01517073 0.3865788 .          0.9654848
#> h .          0.5305231 . .         .          .         0.96548481 .        
#> i 0.58159606 .         . .         .          .         .          .        
#> j 0.06773271 .         . .         .          0.5415853 .          .        
#>                       
#> a 0.5815961 0.06773271
#> b .         .         
#> c .         .         
#> d .         .         
#> e .         .         
#> f .         0.54158533
#> g .         .         
#> h .         .         
#> i .         .         
#> j .         .         
```
