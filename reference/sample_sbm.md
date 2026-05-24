# Sample stochastic block model

Sampling from the stochastic block model of networks

## Usage

``` r
sample_sbm(n, pref.matrix, block.sizes, directed = FALSE, loops = FALSE)

sbm(n, pref.matrix, block.sizes, directed = FALSE, loops = FALSE)
```

## Arguments

- n:

  Number of vertices in the graph.

- pref.matrix:

  The matrix giving the Bernoulli rates. This is a \\K\times K\\ matrix,
  where \\K\\ is the number of groups. The probability of creating an
  edge between vertices from groups \\i\\ and \\j\\ is given by element
  \\(i,j)\\. For undirected graphs, this matrix must be symmetric.

- block.sizes:

  Numeric vector giving the number of vertices in each group. The sum of
  the vector must match the number of vertices.

- directed:

  Logical scalar, whether to create a directed graph.

- loops:

  Logical scalar, whether self-loops are allowed in the graph.

## Value

An igraph graph.

## Details

This function samples graphs from a stochastic block model by (doing the
equivalent of) Bernoulli trials for each potential edge with the
probabilities given by the Bernoulli rate matrix, `pref.matrix`. The
order of the vertices in the generated graph corresponds to the
`block.sizes` argument.

## Related documentation in the C library

[`sbm_game()`](https://igraph.org/c/html/0.10.17/igraph-Generators.html#igraph_sbm_game)

## References

Faust, K., & Wasserman, S. (1992a). Blockmodels: Interpretation and
evaluation. *Social Networks*, 14, 5–61.

## See also

Random graph models (games):
[`bipartite_gnm()`](https://r.igraph.org/reference/sample_bipartite_gnm.md),
[`erdos.renyi.game()`](https://r.igraph.org/reference/erdos.renyi.game.md),
[`sample_()`](https://r.igraph.org/reference/sample_.md),
[`sample_bipartite()`](https://r.igraph.org/reference/sample_bipartite.md),
[`sample_chung_lu()`](https://r.igraph.org/reference/sample_chung_lu.md),
[`sample_correlated_gnp()`](https://r.igraph.org/reference/sample_correlated_gnp.md),
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
[`sample_smallworld()`](https://r.igraph.org/reference/sample_smallworld.md),
[`sample_traits_callaway()`](https://r.igraph.org/reference/sample_traits_callaway.md),
[`sample_tree()`](https://r.igraph.org/reference/sample_tree.md)

## Author

Gabor Csardi <csardi.gabor@gmail.com>

## Examples

``` r

## Two groups with not only few connection between groups
pm <- cbind(c(.1, .001), c(.001, .05))
g <- sample_sbm(1000, pref.matrix = pm, block.sizes = c(300, 700))
g
#> IGRAPH 637d0bf U--- 1000 16667 -- Stochastic block model
#> + attr: name (g/c), loops (g/l)
#> + edges from 637d0bf:
#>  [1]  1-- 4  2-- 4  3-- 4  5-- 6  3-- 9  7-- 9  3--10  4--10  2--12  5--12
#> [11] 12--13  4--14  5--15 10--15  5--17 14--17 15--17  6--19 10--19  4--20
#> [21]  5--20 18--20  2--22  8--22 10--22 18--22  3--23 15--23  5--24  8--24
#> [31] 20--24  6--25 12--25 11--27 17--27 25--27  3--28 13--28 14--28 18--28
#> [41]  9--29 12--29 21--29 21--30 11--32 16--32 21--32 13--33 21--33  1--34
#> [51]  7--34 26--34  2--35 20--35 23--35 28--35  1--36  2--36  4--36  6--36
#> [61] 13--36 33--36 11--37 12--37 17--37 29--37 35--37 11--38 14--38  9--39
#> [71] 14--39 17--39 20--39 32--39 33--39  5--40 10--40 24--40 28--40 29--40
#> + ... omitted several edges
```
