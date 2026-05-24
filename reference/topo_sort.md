# Topological sorting of vertices in a graph

A topological sorting of a directed acyclic graph is a linear ordering
of its nodes where each node comes before all nodes to which it has
edges.

## Usage

``` r
topo_sort(graph, mode = c("out", "all", "in"))
```

## Arguments

- graph:

  The input graph, should be directed

- mode:

  Specifies how to use the direction of the edges. For “`out`”, the
  sorting order ensures that each node comes before all nodes to which
  it has edges, so nodes with no incoming edges go first. For “`in`”, it
  is quite the opposite: each node comes before all nodes from which it
  receives edges. Nodes with no outgoing edges go first.

## Value

A vertex sequence (by default, but see the `return.vs.es` option of
[`igraph_options()`](https://r.igraph.org/reference/igraph_options.md))
containing vertices in topologically sorted order.

## Details

Every DAG has at least one topological sort, and may have many. This
function returns a possible topological sort among them. If the graph is
not acyclic (it has at least one cycle), a partial topological sort is
returned and a warning is issued.

## Related documentation in the C library

[`topological_sorting()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_topological_sorting),
[`vcount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_vcount)

## See also

Other structural.properties:
[`bfs()`](https://r.igraph.org/reference/bfs.md),
[`component_distribution()`](https://r.igraph.org/reference/components.md),
[`connect()`](https://r.igraph.org/reference/ego.md),
[`constraint()`](https://r.igraph.org/reference/constraint.md),
[`coreness()`](https://r.igraph.org/reference/coreness.md),
[`degree()`](https://r.igraph.org/reference/degree.md),
[`dfs()`](https://r.igraph.org/reference/dfs.md),
[`distance_table()`](https://r.igraph.org/reference/distances.md),
[`edge_density()`](https://r.igraph.org/reference/edge_density.md),
[`feedback_arc_set()`](https://r.igraph.org/reference/feedback_arc_set.md),
[`feedback_vertex_set()`](https://r.igraph.org/reference/feedback_vertex_set.md),
[`girth()`](https://r.igraph.org/reference/girth.md),
[`is_acyclic()`](https://r.igraph.org/reference/is_acyclic.md),
[`is_dag()`](https://r.igraph.org/reference/is_dag.md),
[`is_matching()`](https://r.igraph.org/reference/matching.md),
[`k_shortest_paths()`](https://r.igraph.org/reference/k_shortest_paths.md),
[`knn()`](https://r.igraph.org/reference/knn.md),
[`reciprocity()`](https://r.igraph.org/reference/reciprocity.md),
[`subcomponent()`](https://r.igraph.org/reference/subcomponent.md),
[`subgraph()`](https://r.igraph.org/reference/subgraph.md),
[`transitivity()`](https://r.igraph.org/reference/transitivity.md),
[`unfold_tree()`](https://r.igraph.org/reference/unfold_tree.md),
[`which_multiple()`](https://r.igraph.org/reference/which_multiple.md),
[`which_mutual()`](https://r.igraph.org/reference/which_mutual.md)

## Author

Tamas Nepusz <ntamas@gmail.com> and Gabor Csardi
<csardi.gabor@gmail.com> for the R interface

## Examples

``` r

g <- sample_pa(100)
topo_sort(g)
#> + 100/100 vertices, from 0fd92d2:
#>   [1]   4   6   8  12  14  16  18  22  24  25  27  30  32  33  34  37  39  40
#>  [19]  45  46  48  49  50  52  53  54  56  57  58  59  60  61  63  65  66  67
#>  [37]  68  69  70  72  74  75  76  77  78  80  81  82  83  84  85  86  87  88
#>  [55]  89  90  91  92  93  94  95  96  97  98  99 100  20  42  21  11  51  38
#>  [73]  73  62  47  43  71  29  64  44  79  55  36  35  10  41  31  28   9  23
#>  [91]  26  13  19   3   5  17  15   7   2   1
```
