# Generate a new random graph from a given graph by randomly adding/removing edges

Sample a new graph by perturbing the adjacency matrix of a given graph
and shuffling its vertices.

## Usage

``` r
sample_correlated_gnp(
  old.graph,
  corr,
  p = edge_density(old.graph),
  permutation = NULL
)
```

## Arguments

- old.graph:

  The original graph.

- corr:

  A scalar in the unit interval, the target Pearson correlation between
  the adjacency matrices of the original and the generated graph (the
  adjacency matrix being used as a vector).

- p:

  A numeric scalar, the probability of an edge between two vertices, it
  must in the open (0,1) interval. The default is the empirical edge
  density of the graph. If you are resampling an Erdős-Rényi graph and
  you know the original edge probability of the Erdős-Rényi model, you
  should supply that explicitly.

- permutation:

  A numeric vector, a permutation vector that is applied on the vertices
  of the first graph, to get the second graph. If `NULL`, the vertices
  are not permuted.

## Value

An unweighted graph of the same size as `old.graph` such that the
correlation coefficient between the entries of the two adjacency
matrices is `corr`. Note each pair of corresponding matrix entries is a
pair of correlated Bernoulli random variables.

## Details

Please see the reference given below.

## Related documentation in the C library

[`correlated_game()`](https://igraph.org/c/html/0.10.17/igraph-Generators.html#igraph_correlated_game),
[`density()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_density)

## References

Lyzinski, V., Fishkind, D. E., Priebe, C. E. (2013). Seeded graph
matching for correlated Erdős-Rényi graphs.
<https://arxiv.org/abs/1304.7844>

## See also

Random graph models (games):
[`bipartite_gnm()`](https://r.igraph.org/reference/sample_bipartite_gnm.md),
[`erdos.renyi.game()`](https://r.igraph.org/reference/erdos.renyi.game.md),
[`sample_()`](https://r.igraph.org/reference/sample_.md),
[`sample_bipartite()`](https://r.igraph.org/reference/sample_bipartite.md),
[`sample_chung_lu()`](https://r.igraph.org/reference/sample_chung_lu.md),
[`sample_correlated_gnp_pair()`](https://r.igraph.org/reference/sample_correlated_gnp_pair.md),
[`sample_degseq()`](https://r.igraph.org/reference/sample_degseq.md),
[`sample_dot_product()`](https://r.igraph.org/reference/sample_dot_product.md),
[`sample_fitness()`](https://r.igraph.org/reference/sample_fitness.md),
[`sample_fitness_pl()`](https://r.igraph.org/reference/sample_fitness_pl.md),
[`sample_forestfire()`](https://r.igraph.org/reference/sample_forestfire.md),
[`sample_gnm()`](https://r.igraph.org/reference/sample_gnm.md),
[`sample_gnp()`](https://r.igraph.org/reference/sample_gnp.md),
[`sample_grg()`](https://r.igraph.org/reference/sample_grg.md),
[`sample_growing()`](https://r.igraph.org/reference/sample_growing.md),
[`sample_hierarchical_sbm()`](https://r.igraph.org/reference/sample_hierarchical_sbm.md),
[`sample_islands()`](https://r.igraph.org/reference/sample_islands.md),
[`sample_k_regular()`](https://r.igraph.org/reference/sample_k_regular.md),
[`sample_last_cit()`](https://r.igraph.org/reference/sample_last_cit.md),
[`sample_pa()`](https://r.igraph.org/reference/sample_pa.md),
[`sample_pa_age()`](https://r.igraph.org/reference/sample_pa_age.md),
[`sample_pref()`](https://r.igraph.org/reference/sample_pref.md),
[`sample_sbm()`](https://r.igraph.org/reference/sample_sbm.md),
[`sample_smallworld()`](https://r.igraph.org/reference/sample_smallworld.md),
[`sample_traits_callaway()`](https://r.igraph.org/reference/sample_traits_callaway.md),
[`sample_tree()`](https://r.igraph.org/reference/sample_tree.md)

## Examples

``` r
g <- sample_gnp(1000, .1)
g2 <- sample_correlated_gnp(g, corr = 0.5)
cor(as.vector(g[]), as.vector(g2[]))
#> [1] 0.5028785
g
#> IGRAPH 5a7242b U--- 1000 49701 -- Erdos-Renyi (gnp) graph
#> + attr: name (g/c), type (g/c), loops (g/l), p (g/n)
#> + edges from 5a7242b:
#>  [1]  1-- 5  5-- 8  8-- 9  7--10  2--11  3--11  5--11  1--14  2--15 11--16
#> [11]  9--17 14--17  1--18 16--18 13--19  9--20 17--20 15--21  5--22 17--22
#> [21]  4--23  6--24  8--24 13--24  6--25 12--25  5--26  7--26  5--27  8--27
#> [31] 17--27  5--29 12--29 27--29  9--30  1--31  2--31  4--31 26--31  5--32
#> [41]  9--32 17--32 18--32 17--33 19--33 23--33 26--33  6--34 12--34 14--34
#> [51] 27--34 28--34 20--35 29--35 32--35  2--36 14--36  5--37  7--37 13--37
#> [61] 17--37 21--37 27--37 31--37  4--38 16--38 17--38 29--38 15--40 24--40
#> [71] 28--40 30--40 33--40 38--40  3--41 15--41 39--41 14--42 23--42 29--42
#> + ... omitted several edges
g2
#> IGRAPH ed351e2 U--- 1000 49573 -- Correlated random graph
#> + attr: name (g/c), corr (g/n), p (g/n)
#> + edges from ed351e2:
#>  [1]  1-- 5  4-- 7  1-- 8  2--11 11--16 15--16  6--17 14--17 16--18  7--19
#> [11] 13--19 18--19 16--20 15--21  5--22 17--22 18--22  4--23  1--24  8--24
#> [21] 13--24  6--25 21--25  5--26  7--26  6--27 26--27  4--28  8--28 11--28
#> [31]  4--29  5--29  6--29 23--29 21--30  2--31 26--31  9--32 17--32 18--32
#> [41] 14--33 17--33 19--33  6--34 12--34 16--34 21--34 31--34 29--35 32--35
#> [51] 14--36  5--37  7--37  8--37 13--37 17--37 22--37 16--38 17--38 29--38
#> [61] 30--38 14--39 15--40 28--40 30--40 33--40 38--40  3--41 15--41 33--41
#> [71] 39--41 14--42 20--42 23--42 26--42 32--42 21--43 22--43 34--43 38--43
#> + ... omitted several edges
```
