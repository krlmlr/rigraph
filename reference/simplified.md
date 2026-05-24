# Constructor modifier to drop multiple and loop edges

Constructor modifier to drop multiple and loop edges

## Usage

``` r
simplified()
```

## See also

Constructor modifiers (and related functions):
[`make_()`](https://r.igraph.org/reference/make_.md),
[`sample_()`](https://r.igraph.org/reference/sample_.md),
[`with_edge_()`](https://r.igraph.org/reference/with_edge_.md),
[`with_graph_()`](https://r.igraph.org/reference/with_graph_.md),
[`with_vertex_()`](https://r.igraph.org/reference/with_vertex_.md),
[`without_attr()`](https://r.igraph.org/reference/without_attr.md),
[`without_loops()`](https://r.igraph.org/reference/without_loops.md),
[`without_multiples()`](https://r.igraph.org/reference/without_multiples.md)

## Examples

``` r
sample_(pa(10, m = 3, algorithm = "bag"))
#> IGRAPH 7041b40 D--- 10 27 -- Barabasi graph
#> + attr: name (g/c), power (g/n), m (g/n), zero.appeal (g/n), algorithm
#> | (g/c)
#> + edges from 7041b40:
#>  [1]  2->1  2->1  2->1  3->1  3->2  3->1  4->1  4->3  4->1  5->1  5->1  5->1
#> [13]  6->1  6->1  6->1  7->2  7->1  7->4  8->1  8->4  8->1  9->1  9->1  9->3
#> [25] 10->2 10->1 10->9
sample_(pa(10, m = 3, algorithm = "bag"), simplified())
#> IGRAPH cdedc4c D--- 10 17 -- Barabasi graph
#> + attr: name (g/c), power (g/n), m (g/n), zero.appeal (g/n), algorithm
#> | (g/c)
#> + edges from cdedc4c:
#>  [1]  2->1  3->1  3->2  4->1  4->2  5->1  5->2  5->4  6->1  6->2  7->1  8->1
#> [13]  8->2  9->1  9->2 10->1 10->2
```
