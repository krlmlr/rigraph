# Constructor modifier to drop multiple edges

Constructor modifier to drop multiple edges

## Usage

``` r
without_multiples()
```

## See also

Constructor modifiers (and related functions):
[`make_()`](https://r.igraph.org/reference/make_.md),
[`sample_()`](https://r.igraph.org/reference/sample_.md),
[`simplified()`](https://r.igraph.org/reference/simplified.md),
[`with_edge_()`](https://r.igraph.org/reference/with_edge_.md),
[`with_graph_()`](https://r.igraph.org/reference/with_graph_.md),
[`with_vertex_()`](https://r.igraph.org/reference/with_vertex_.md),
[`without_attr()`](https://r.igraph.org/reference/without_attr.md),
[`without_loops()`](https://r.igraph.org/reference/without_loops.md)

## Examples

``` r
sample_(pa(10, m = 3, algorithm = "bag"))
#> IGRAPH eef9033 D--- 10 27 -- Barabasi graph
#> + attr: name (g/c), power (g/n), m (g/n), zero.appeal (g/n), algorithm
#> | (g/c)
#> + edges from eef9033:
#>  [1]  2->1  2->1  2->1  3->1  3->1  3->1  4->1  4->1  4->3  5->1  5->1  5->1
#> [13]  6->1  6->1  6->1  7->1  7->1  7->5  8->1  8->5  8->1  9->1  9->1  9->1
#> [25] 10->1 10->5 10->1
sample_(pa(10, m = 3, algorithm = "bag"), without_multiples())
#> IGRAPH 13a1015 D--- 10 19 -- Barabasi graph
#> + attr: name (g/c), power (g/n), m (g/n), zero.appeal (g/n), algorithm
#> | (g/c)
#> + edges from 13a1015:
#>  [1]  2->1  3->1  3->2  4->1  4->3  5->1  6->1  6->2  6->3  7->3  7->4  7->5
#> [13]  8->1  8->4  9->1  9->2 10->1 10->2 10->3
```
