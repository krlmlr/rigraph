# Functions to find cliques, i.e. complete subgraphs in a graph

These functions find all, the largest or all the maximal cliques in an
undirected graph. The size of the largest clique can also be calculated.

Tests if all pairs within a set of vertices are adjacent, i.e. whether
they form a clique. An empty set and singleton set are considered to be
a clique.

## Usage

``` r
cliques(graph, min = NULL, max = NULL, ..., callback = NULL)

largest_cliques(graph)

max_cliques(
  graph,
  min = NULL,
  max = NULL,
  subset = NULL,
  file = NULL,
  ...,
  callback = NULL
)

count_max_cliques(graph, min = NULL, max = NULL, subset = NULL)

clique_num(graph)

largest_weighted_cliques(graph, vertex.weights = NULL)

weighted_clique_num(graph, vertex.weights = NULL)

clique_size_counts(graph, min = 0, max = 0, maximal = FALSE)

is_clique(graph, candidate, directed = FALSE)
```

## Arguments

- graph:

  The input graph.

- min:

  Numeric constant, lower limit on the size of the cliques to find.
  `NULL` means no limit, i.e. it is the same as 0.

- max:

  Numeric constant, upper limit on the size of the cliques to find.
  `NULL` means no limit.

- ...:

  These dots are for future extensions and must be empty.

- callback:

  Optional function to call for each clique found. If provided, the
  function should accept one argument: `clique` (integer vector of
  vertex IDs in the clique, 1-based indexing). The function should
  return `FALSE` to continue the search or `TRUE` to stop it. If `NULL`
  (the default), all cliques are collected and returned as a list.

  **Important limitation:** Callback functions must NOT call any igraph
  functions (including simple queries like
  [`vcount()`](https://r.igraph.org/reference/gorder.md) or
  [`ecount()`](https://r.igraph.org/reference/gsize.md)). Doing so will
  cause R to crash due to reentrancy issues. Extract any needed graph
  information before calling the function with a callback, or use
  collector mode (the default) and process results afterward.

- subset:

  If not `NULL`, then it must be a vector of vertex ids, numeric or
  symbolic if the graph is named. The algorithm is run from these
  vertices only, so only a subset of all maximal cliques is returned.
  See the Eppstein paper for details. This argument makes it possible to
  easily parallelize the finding of maximal cliques.

- file:

  If not `NULL`, then it must be a file name, i.e. a character scalar.
  The output of the algorithm is written to this file. (If it exists,
  then it will be overwritten.) Each clique will be a separate line in
  the file, given with the numeric ids of its vertices, separated by
  whitespace.

- vertex.weights:

  Vertex weight vector. If the graph has a `weight` vertex attribute,
  then this is used by default. If the graph does not have a `weight`
  vertex attribute and this argument is `NULL`, then every vertex is
  assumed to have a weight of 1. Note that the current implementation of
  the weighted clique finder supports positive integer weights only.

- maximal:

  Specifies whether to look for all weighted cliques (`FALSE`) or only
  the maximal ones (`TRUE`).

- candidate:

  The vertex set to test for being a clique.

- directed:

  Whether to consider edge directions.

## Value

`cliques()` returns a list containing numeric vectors of vertex ids if
`callback` is `NULL`. Each list element is a clique, i.e. a vertex
sequence of class [igraph.vs](https://r.igraph.org/reference/V.md). If
`callback` is provided, returns `NULL` invisibly.

`largest_cliques()` and `clique_num()` return a list containing numeric
vectors of vertex ids. Each list element is a clique, i.e. a vertex
sequence of class [igraph.vs](https://r.igraph.org/reference/V.md).

`max_cliques()` returns `NULL`, invisibly, if its `file` argument is not
`NULL`. The output is written to the specified file in this case.

`clique_num()` and `count_max_cliques()` return an integer scalar.

`clique_size_counts()` returns a numeric vector with the clique sizes
such that the i-th item belongs to cliques of size i. Trailing zeros are
currently truncated, but this might change in future versions.

`is_clique()` returns `TRUE` if the candidate vertex set forms a clique.

## Details

`cliques()` find all complete subgraphs in the input graph, obeying the
size limitations given in the `min` and `max` arguments.

`largest_cliques()` finds all largest cliques in the input graph. A
clique is largest if there is no other clique including more vertices.

`max_cliques()` finds all maximal cliques in the input graph. A clique
is maximal if it cannot be extended to a larger clique. The largest
cliques are always maximal, but a maximal clique is not necessarily the
largest.

`count_max_cliques()` counts the maximal cliques.

`clique_num()` calculates the size of the largest clique(s).

`clique_size_counts()` returns a numeric vector representing a histogram
of clique sizes, between the given minimum and maximum clique size.

`is_clique()` tests whether all pairs within a vertex set are connected.

## Related documentation in the C library

[`cliques()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_cliques),
[`vcount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_vcount),
[`largest_cliques()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_largest_cliques),
[`clique_number()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_clique_number),
[`largest_weighted_cliques()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_largest_weighted_cliques),
[`weighted_clique_number()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_weighted_clique_number),
[`clique_size_hist()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_clique_size_hist),
[`maximal_cliques_hist()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_maximal_cliques_hist),
[`is_clique()`](https://igraph.org/c/html/0.10.17/igraph-Cliques.html#igraph_is_clique)

## References

For maximal cliques the following algorithm is implemented: David
Eppstein, Maarten Loffler, Darren Strash: Listing All Maximal Cliques in
Sparse Graphs in Near-optimal Time. <https://arxiv.org/abs/1006.5440>

## See also

Other cliques:
[`is_complete()`](https://r.igraph.org/reference/is_complete.md),
[`ivs()`](https://r.igraph.org/reference/ivs.md),
[`weighted_cliques()`](https://r.igraph.org/reference/weighted_cliques.md)

## Author

Tamas Nepusz <ntamas@gmail.com> and Gabor Csardi
<csardi.gabor@gmail.com>

## Examples

``` r

# this usually contains cliques of size six
g <- sample_gnp(100, 0.3)
clique_num(g)
#> [1] 6
cliques(g, min = 6)
#> [[1]]
#> + 6/100 vertices, from b0030d5:
#> [1]  7  9 24 31 34 77
#> 
#> [[2]]
#> + 6/100 vertices, from b0030d5:
#> [1]  6 19 22 30 64 87
#> 
#> [[3]]
#> + 6/100 vertices, from b0030d5:
#> [1]  6 15 22 27 34 88
#> 
#> [[4]]
#> + 6/100 vertices, from b0030d5:
#> [1]  3 20 37 54 57 69
#> 
#> [[5]]
#> + 6/100 vertices, from b0030d5:
#> [1]  6 19 30 40 41 49
#> 
#> [[6]]
#> + 6/100 vertices, from b0030d5:
#> [1]  8 24 31 41 49 77
#> 
#> [[7]]
#> + 6/100 vertices, from b0030d5:
#> [1] 11 17 39 41 65 96
#> 
#> [[8]]
#> + 6/100 vertices, from b0030d5:
#> [1] 11 39 41 65 77 81
#> 
#> [[9]]
#> + 6/100 vertices, from b0030d5:
#> [1] 11 31 39 41 65 77
#> 
#> [[10]]
#> + 6/100 vertices, from b0030d5:
#> [1] 11 33 39 81 87 96
#> 
#> [[11]]
#> + 6/100 vertices, from b0030d5:
#> [1] 11 39 65 81 87 96
#> 
#> [[12]]
#> + 6/100 vertices, from b0030d5:
#> [1] 11 39 41 65 81 96
#> 
#> [[13]]
#> + 6/100 vertices, from b0030d5:
#> [1]  39  41  65  77  81 100
#> 
#> [[14]]
#> + 6/100 vertices, from b0030d5:
#> [1] 13 24 35 63 82 95
#> 
#> [[15]]
#> + 6/100 vertices, from b0030d5:
#> [1]  7 13 24 35 63 95
#> 
#> [[16]]
#> + 6/100 vertices, from b0030d5:
#> [1] 13 24 41 63 85 95
#> 
#> [[17]]
#> + 6/100 vertices, from b0030d5:
#> [1]  7 13 24 63 85 95
#> 
#> [[18]]
#> + 6/100 vertices, from b0030d5:
#> [1]  1  3 37 57 69 75
#> 
largest_cliques(g)
#> [[1]]
#> + 6/100 vertices, from b0030d5:
#> [1] 17 41 11 96 39 65
#> 
#> [[2]]
#> + 6/100 vertices, from b0030d5:
#> [1] 13 95 24 63 82 35
#> 
#> [[3]]
#> + 6/100 vertices, from b0030d5:
#> [1] 13 95 24 63 35  7
#> 
#> [[4]]
#> + 6/100 vertices, from b0030d5:
#> [1] 13 95 24 63 85  7
#> 
#> [[5]]
#> + 6/100 vertices, from b0030d5:
#> [1] 13 95 24 63 85 41
#> 
#> [[6]]
#> + 6/100 vertices, from b0030d5:
#> [1] 15 34 88 22 27  6
#> 
#> [[7]]
#> + 6/100 vertices, from b0030d5:
#> [1] 19 87 22 64 30  6
#> 
#> [[8]]
#> + 6/100 vertices, from b0030d5:
#> [1] 19 41  6 49 40 30
#> 
#> [[9]]
#> + 6/100 vertices, from b0030d5:
#> [1] 20 54 69  3 57 37
#> 
#> [[10]]
#> + 6/100 vertices, from b0030d5:
#> [1] 24 49 31 77 41  8
#> 
#> [[11]]
#> + 6/100 vertices, from b0030d5:
#> [1] 24  7  9 77 34 31
#> 
#> [[12]]
#> + 6/100 vertices, from b0030d5:
#> [1] 31 77 11 65 41 39
#> 
#> [[13]]
#> + 6/100 vertices, from b0030d5:
#> [1] 33 39 11 81 96 87
#> 
#> [[14]]
#> + 6/100 vertices, from b0030d5:
#> [1] 37  3 69 75  1 57
#> 
#> [[15]]
#> + 6/100 vertices, from b0030d5:
#> [1] 39 87 81 96 65 11
#> 
#> [[16]]
#> + 6/100 vertices, from b0030d5:
#> [1] 39 81 41 65 96 11
#> 
#> [[17]]
#> + 6/100 vertices, from b0030d5:
#> [1] 39 81 41 65 77 11
#> 
#> [[18]]
#> + 6/100 vertices, from b0030d5:
#> [1]  39  81  41  65  77 100
#> 

# To have a bit less maximal cliques, about 100-200 usually
g <- sample_gnp(100, 0.03)
max_cliques(g)
#> [[1]]
#> + 1/100 vertex, from fcce888:
#> [1] 37
#> 
#> [[2]]
#> + 1/100 vertex, from fcce888:
#> [1] 25
#> 
#> [[3]]
#> + 1/100 vertex, from fcce888:
#> [1] 13
#> 
#> [[4]]
#> + 1/100 vertex, from fcce888:
#> [1] 41
#> 
#> [[5]]
#> + 1/100 vertex, from fcce888:
#> [1] 40
#> 
#> [[6]]
#> + 2/100 vertices, from fcce888:
#> [1] 76 61
#> 
#> [[7]]
#> + 2/100 vertices, from fcce888:
#> [1] 76 60
#> 
#> [[8]]
#> + 2/100 vertices, from fcce888:
#> [1]  2 16
#> 
#> [[9]]
#> + 2/100 vertices, from fcce888:
#> [1]  2 10
#> 
#> [[10]]
#> + 2/100 vertices, from fcce888:
#> [1]  4 23
#> 
#> [[11]]
#> + 2/100 vertices, from fcce888:
#> [1] 15 12
#> 
#> [[12]]
#> + 2/100 vertices, from fcce888:
#> [1] 21 44
#> 
#> [[13]]
#> + 2/100 vertices, from fcce888:
#> [1] 22 70
#> 
#> [[14]]
#> + 2/100 vertices, from fcce888:
#> [1] 22 54
#> 
#> [[15]]
#> + 2/100 vertices, from fcce888:
#> [1] 23 80
#> 
#> [[16]]
#> + 2/100 vertices, from fcce888:
#> [1] 24 26
#> 
#> [[17]]
#> + 2/100 vertices, from fcce888:
#> [1] 35 12
#> 
#> [[18]]
#> + 2/100 vertices, from fcce888:
#> [1] 38 65
#> 
#> [[19]]
#> + 2/100 vertices, from fcce888:
#> [1] 42 86
#> 
#> [[20]]
#> + 2/100 vertices, from fcce888:
#> [1] 47 92
#> 
#> [[21]]
#> + 2/100 vertices, from fcce888:
#> [1] 49 91
#> 
#> [[22]]
#> + 2/100 vertices, from fcce888:
#> [1] 53 63
#> 
#> [[23]]
#> + 2/100 vertices, from fcce888:
#> [1] 53 58
#> 
#> [[24]]
#> + 2/100 vertices, from fcce888:
#> [1] 54 82
#> 
#> [[25]]
#> + 2/100 vertices, from fcce888:
#> [1] 55 18
#> 
#> [[26]]
#> + 2/100 vertices, from fcce888:
#> [1] 57 92
#> 
#> [[27]]
#> + 2/100 vertices, from fcce888:
#> [1] 60 97
#> 
#> [[28]]
#> + 2/100 vertices, from fcce888:
#> [1] 64 91
#> 
#> [[29]]
#> + 2/100 vertices, from fcce888:
#> [1] 65 69
#> 
#> [[30]]
#> + 2/100 vertices, from fcce888:
#> [1] 68 89
#> 
#> [[31]]
#> + 2/100 vertices, from fcce888:
#> [1] 71  8
#> 
#> [[32]]
#> + 2/100 vertices, from fcce888:
#> [1] 74 72
#> 
#> [[33]]
#> + 2/100 vertices, from fcce888:
#> [1] 85  8
#> 
#> [[34]]
#> + 2/100 vertices, from fcce888:
#> [1] 88 95
#> 
#> [[35]]
#> + 2/100 vertices, from fcce888:
#> [1] 89 36
#> 
#> [[36]]
#> + 2/100 vertices, from fcce888:
#> [1] 92 93
#> 
#> [[37]]
#> + 2/100 vertices, from fcce888:
#> [1] 93 56
#> 
#> [[38]]
#> + 2/100 vertices, from fcce888:
#> [1] 94 70
#> 
#> [[39]]
#> + 2/100 vertices, from fcce888:
#> [1] 99 72
#> 
#> [[40]]
#> + 2/100 vertices, from fcce888:
#> [1] 39 95
#> 
#> [[41]]
#> + 2/100 vertices, from fcce888:
#> [1] 39 63
#> 
#> [[42]]
#> + 2/100 vertices, from fcce888:
#> [1]  3 62
#> 
#> [[43]]
#> + 2/100 vertices, from fcce888:
#> [1]  3 45
#> 
#> [[44]]
#> + 2/100 vertices, from fcce888:
#> [1] 3 7
#> 
#> [[45]]
#> + 2/100 vertices, from fcce888:
#> [1] 78 84
#> 
#> [[46]]
#> + 2/100 vertices, from fcce888:
#> [1] 78 63
#> 
#> [[47]]
#> + 2/100 vertices, from fcce888:
#> [1] 78 30
#> 
#> [[48]]
#> + 2/100 vertices, from fcce888:
#> [1] 43 75
#> 
#> [[49]]
#> + 2/100 vertices, from fcce888:
#> [1] 43 62
#> 
#> [[50]]
#> + 3/100 vertices, from fcce888:
#> [1] 43 46 95
#> 
#> [[51]]
#> + 2/100 vertices, from fcce888:
#> [1] 43 18
#> 
#> [[52]]
#> + 2/100 vertices, from fcce888:
#> [1] 44 63
#> 
#> [[53]]
#> + 2/100 vertices, from fcce888:
#> [1] 44 51
#> 
#> [[54]]
#> + 2/100 vertices, from fcce888:
#> [1] 45 69
#> 
#> [[55]]
#> + 2/100 vertices, from fcce888:
#> [1] 46 34
#> 
#> [[56]]
#> + 2/100 vertices, from fcce888:
#> [1] 79 98
#> 
#> [[57]]
#> + 2/100 vertices, from fcce888:
#> [1] 79 26
#> 
#> [[58]]
#> + 2/100 vertices, from fcce888:
#> [1] 48 34
#> 
#> [[59]]
#> + 2/100 vertices, from fcce888:
#> [1] 48  6
#> 
#> [[60]]
#> + 2/100 vertices, from fcce888:
#> [1] 80 56
#> 
#> [[61]]
#> + 2/100 vertices, from fcce888:
#> [1] 80 28
#> 
#> [[62]]
#> + 2/100 vertices, from fcce888:
#> [1] 80  5
#> 
#> [[63]]
#> + 2/100 vertices, from fcce888:
#> [1] 50 69
#> 
#> [[64]]
#> + 2/100 vertices, from fcce888:
#> [1] 50  5
#> 
#> [[65]]
#> + 2/100 vertices, from fcce888:
#> [1] 51 66
#> 
#> [[66]]
#> + 2/100 vertices, from fcce888:
#> [1] 51 59
#> 
#> [[67]]
#> + 2/100 vertices, from fcce888:
#> [1] 52 98
#> 
#> [[68]]
#> + 2/100 vertices, from fcce888:
#> [1] 52 86
#> 
#> [[69]]
#> + 2/100 vertices, from fcce888:
#> [1] 52 72
#> 
#> [[70]]
#> + 2/100 vertices, from fcce888:
#> [1] 52 31
#> 
#> [[71]]
#> + 2/100 vertices, from fcce888:
#> [1] 52 28
#> 
#> [[72]]
#> + 2/100 vertices, from fcce888:
#> [1] 52 20
#> 
#> [[73]]
#> + 3/100 vertices, from fcce888:
#> [1] 81 11 84
#> 
#> [[74]]
#> + 2/100 vertices, from fcce888:
#> [1] 96 56
#> 
#> [[75]]
#> + 2/100 vertices, from fcce888:
#> [1] 96  9
#> 
#> [[76]]
#> + 2/100 vertices, from fcce888:
#> [1] 96  7
#> 
#> [[77]]
#> + 2/100 vertices, from fcce888:
#> [1]  83 100
#> 
#> [[78]]
#> + 2/100 vertices, from fcce888:
#> [1] 83 70
#> 
#> [[79]]
#> + 2/100 vertices, from fcce888:
#> [1] 83 34
#> 
#> [[80]]
#> + 2/100 vertices, from fcce888:
#> [1] 83 18
#> 
#> [[81]]
#> + 2/100 vertices, from fcce888:
#> [1] 56 73
#> 
#> [[82]]
#> + 2/100 vertices, from fcce888:
#> [1] 56 33
#> 
#> [[83]]
#> + 2/100 vertices, from fcce888:
#> [1] 84 18
#> 
#> [[84]]
#> + 2/100 vertices, from fcce888:
#> [1] 100  90
#> 
#> [[85]]
#> + 2/100 vertices, from fcce888:
#> [1] 59 70
#> 
#> [[86]]
#> + 2/100 vertices, from fcce888:
#> [1] 86  9
#> 
#> [[87]]
#> + 2/100 vertices, from fcce888:
#> [1] 61 72
#> 
#> [[88]]
#> + 2/100 vertices, from fcce888:
#> [1] 61 26
#> 
#> [[89]]
#> + 2/100 vertices, from fcce888:
#> [1] 61  9
#> 
#> [[90]]
#> + 2/100 vertices, from fcce888:
#> [1] 62 67
#> 
#> [[91]]
#> + 2/100 vertices, from fcce888:
#> [1] 62 66
#> 
#> [[92]]
#> + 2/100 vertices, from fcce888:
#> [1] 62  9
#> 
#> [[93]]
#> + 3/100 vertices, from fcce888:
#> [1] 63 14 18
#> 
#> [[94]]
#> + 2/100 vertices, from fcce888:
#> [1] 87 12
#> 
#> [[95]]
#> + 2/100 vertices, from fcce888:
#> [1] 87  1
#> 
#> [[96]]
#> + 2/100 vertices, from fcce888:
#> [1] 98 66
#> 
#> [[97]]
#> + 2/100 vertices, from fcce888:
#> [1] 98 29
#> 
#> [[98]]
#> + 2/100 vertices, from fcce888:
#> [1] 98  6
#> 
#> [[99]]
#> + 2/100 vertices, from fcce888:
#> [1] 67 32
#> 
#> [[100]]
#> + 2/100 vertices, from fcce888:
#> [1] 67  5
#> 
#> [[101]]
#> + 2/100 vertices, from fcce888:
#> [1] 95 77
#> 
#> [[102]]
#> + 2/100 vertices, from fcce888:
#> [1] 69 36
#> 
#> [[103]]
#> + 2/100 vertices, from fcce888:
#> [1] 69 10
#> 
#> [[104]]
#> + 2/100 vertices, from fcce888:
#> [1]  9 12
#> 
#> [[105]]
#> + 2/100 vertices, from fcce888:
#> [1] 10 29
#> 
#> [[106]]
#> + 2/100 vertices, from fcce888:
#> [1] 12 27
#> 
#> [[107]]
#> + 2/100 vertices, from fcce888:
#> [1]  8 91
#> 
#> [[108]]
#> + 2/100 vertices, from fcce888:
#> [1]  8 20
#> 
#> [[109]]
#> + 2/100 vertices, from fcce888:
#> [1] 14 91
#> 
#> [[110]]
#> + 2/100 vertices, from fcce888:
#> [1] 14  1
#> 
#> [[111]]
#> + 2/100 vertices, from fcce888:
#> [1] 90 91
#> 
#> [[112]]
#> + 2/100 vertices, from fcce888:
#> [1] 90 31
#> 
#> [[113]]
#> + 2/100 vertices, from fcce888:
#> [1] 17 34
#> 
#> [[114]]
#> + 2/100 vertices, from fcce888:
#> [1] 17 26
#> 
#> [[115]]
#> + 2/100 vertices, from fcce888:
#> [1] 17 19
#> 
#> [[116]]
#> + 2/100 vertices, from fcce888:
#> [1] 18 73
#> 
#> [[117]]
#> + 2/100 vertices, from fcce888:
#> [1] 19 77
#> 
#> [[118]]
#> + 2/100 vertices, from fcce888:
#> [1] 19 33
#> 
#> [[119]]
#> + 2/100 vertices, from fcce888:
#> [1] 73 32
#> 
#> [[120]]
#> + 2/100 vertices, from fcce888:
#> [1] 75 27
#> 
#> [[121]]
#> + 2/100 vertices, from fcce888:
#> [1]  7 29
#> 
#> [[122]]
#> + 2/100 vertices, from fcce888:
#> [1] 26 29
#> 
#> [[123]]
#> + 2/100 vertices, from fcce888:
#> [1] 27 29
#> 
#> [[124]]
#> + 2/100 vertices, from fcce888:
#> [1] 28 33
#> 
#> [[125]]
#> + 2/100 vertices, from fcce888:
#> [1] 30 36
#> 

# Check that all returned vertex sets are indeed cliques
all(sapply(max_cliques(g), function (c) is_clique(g, c)))
#> [1] TRUE
```
