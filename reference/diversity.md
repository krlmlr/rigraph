# Graph diversity

Calculates a measure of diversity for all vertices.

## Usage

``` r
diversity(graph, weights = NULL, vids = V(graph))
```

## Arguments

- graph:

  The input graph. Edge directions are ignored.

- weights:

  `NULL`, or the vector of edge weights to use for the computation. If
  `NULL`, then the ‘weight’ attibute is used. Note that this measure is
  not defined for unweighted graphs.

- vids:

  The vertex ids for which to calculate the measure.

## Value

A numeric vector, its length is the number of vertices.

## Details

The diversity of a vertex is defined as the (scaled) Shannon entropy of
the weights of its incident edges: \$\$D(i)=\frac{H(i)}{\log k_i}\$\$
and \$\$H(i)=-\sum\_{j=1}^{k_i} p\_{ij}\log p\_{ij},\$\$ where
\$\$p\_{ij}=\frac{w\_{ij}}{\sum\_{l=1}^{k_i}}V\_{il},\$\$ and \\k_i\\ is
the (total) degree of vertex \\i\\, \\w\_{ij}\\ is the weight of the
edge(s) between vertices \\i\\ and \\j\\.

For vertices with degree less than two the function returns `NaN`.

## Related documentation in the C library

[`diversity()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_diversity),
[`vcount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_vcount),
[`edges()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_edges),
[`get_eids()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_get_eids),
[`ecount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_ecount)

## References

Nathan Eagle, Michael Macy and Rob Claxton: Network Diversity and
Economic Development, *Science* **328**, 1029–1031, 2010.

## See also

Centrality measures:
[`alpha_centrality()`](https://r.igraph.org/reference/alpha_centrality.md),
[`authority_score()`](https://r.igraph.org/reference/hub_score.md),
[`betweenness()`](https://r.igraph.org/reference/betweenness.md),
[`closeness()`](https://r.igraph.org/reference/closeness.md),
[`eigen_centrality()`](https://r.igraph.org/reference/eigen_centrality.md),
[`harmonic_centrality()`](https://r.igraph.org/reference/harmonic_centrality.md),
[`hits_scores()`](https://r.igraph.org/reference/hits_scores.md),
[`page_rank()`](https://r.igraph.org/reference/page_rank.md),
[`power_centrality()`](https://r.igraph.org/reference/power_centrality.md),
[`spectrum()`](https://r.igraph.org/reference/spectrum.md),
[`strength()`](https://r.igraph.org/reference/strength.md),
[`subgraph_centrality()`](https://r.igraph.org/reference/subgraph_centrality.md)

## Author

Gabor Csardi <csardi.gabor@gmail.com>

## Examples

``` r

g1 <- sample_gnp(20, 2 / 20)
g2 <- sample_gnp(20, 2 / 20)
g3 <- sample_gnp(20, 5 / 20)
E(g1)$weight <- 1
E(g2)$weight <- runif(ecount(g2))
E(g3)$weight <- runif(ecount(g3))
diversity(g1)
#>  [1]   1   1   1   1   1   0 NaN   0   0   1   1   0   1   0   1 NaN   0   1   1
#> [20]   0
diversity(g2)
#>  [1] 0.7754207 0.9580288 0.9990115 0.0000000       NaN 0.8453777 0.9793873
#>  [8] 0.7579965 0.9924348 0.0000000 0.9281088 0.9518531 0.0000000 0.0000000
#> [15] 0.9831140 0.9342582 0.9488446 0.0000000 0.9707506 0.0000000
diversity(g3)
#>  [1] 0.0000000 0.8705525 0.8181189 0.9317037 0.9913889 0.9151438 0.0000000
#>  [8] 0.9525923 0.9231369 0.9428480 0.9801659 0.9380849 0.9216628 0.8872916
#> [15] 0.9578621 0.9433777 0.0000000 0.7679129 0.3249874 0.7635131
```
