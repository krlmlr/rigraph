# Scan statistics on a time series of graphs

Calculate scan statistics on a time series of graphs. This is done by
calculating the local scan statistics for each graph and each vertex,
and then normalizing across the vertices and across the time steps.

## Usage

``` r
scan_stat(graphs, tau = 1, ell = 0, locality = c("us", "them"), ...)
```

## Arguments

- graphs:

  A list of igraph graph objects. They must be all directed or all
  undirected and they must have the same number of vertices.

- tau:

  The number of previous time steps to consider for the time-dependent
  normalization for individual vertices. In other words, the current
  locality statistics of each vertex will be compared to this many
  previous time steps of the same vertex to decide whether it is
  significantly larger.

- ell:

  The number of previous time steps to consider for the aggregated scan
  statistics. This is essentially a smoothing parameter.

- locality:

  Whether to calculate the ‘us’ or ‘them’ statistics.

- ...:

  Extra arguments are passed to
  [`local_scan()`](https://r.igraph.org/reference/local_scan.md).

## Value

A list with entries:

- stat:

  The scan statistics in each time step. It is `NA` for the initial
  `tau + ell` time steps.

- arg_max_v:

  The (numeric) vertex ids for the vertex with the largest locality
  statistics, at each time step. It is `NA` for the initial `tau + ell`
  time steps.

## Related documentation in the C library

[`vcount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_vcount),
[`local_scan_0()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_0),
[`local_scan_0_them()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_0_them),
[`local_scan_1_ecount()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_1_ecount),
[`local_scan_1_ecount_them()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_1_ecount_them),
[`local_scan_k_ecount()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_k_ecount),
[`local_scan_k_ecount_them()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_k_ecount_them),
[`local_scan_neighborhood_ecount()`](https://igraph.org/c/html/0.10.17/igraph-Structural.html#igraph_local_scan_neighborhood_ecount),
[`induced_subgraph()`](https://igraph.org/c/html/0.10.17/igraph-Operators.html#igraph_induced_subgraph),
[`edges()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_edges),
[`get_eids()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_get_eids),
[`ecount()`](https://igraph.org/c/html/0.10.17/igraph-Basic.html#igraph_ecount)

## See also

Other scan statistics:
[`local_scan()`](https://r.igraph.org/reference/local_scan.md)

## Examples

``` r
## Generate a bunch of SBMs, with the last one being different
num_t <- 20
block_sizes <- c(10, 5, 5)
p_ij <- list(p = 0.1, h = 0.9, q = 0.9)

P0 <- matrix(p_ij$p, 3, 3)
P0[2, 2] <- p_ij$h
PA <- P0
PA[3, 3] <- p_ij$q
num_v <- sum(block_sizes)

tsg <- replicate(num_t - 1, P0, simplify = FALSE) %>%
  append(list(PA)) %>%
  lapply(sample_sbm, n = num_v, block.sizes = block_sizes, directed = TRUE)

scan_stat(graphs = tsg, k = 1, tau = 4, ell = 2)
#> $stat
#>  [1]          NA          NA          NA          NA          NA          NA
#>  [7] -1.59057598 -0.57359350  0.97397483  3.75054283 -0.07619759 -0.10641481
#> [13] -1.64928845  2.39942100 -0.39283710 -2.52538136  1.41421356 -0.37653376
#> [19] -0.44744847 14.44736216
#> 
#> $arg_max_v
#>  [1] NA NA NA NA NA NA  5  4 14 13 17  7 10  4  8  1  5 18 16 20
#> 
scan_stat(graphs = tsg, locality = "them", k = 1, tau = 4, ell = 2)
#> $stat
#>  [1]         NA         NA         NA         NA         NA         NA
#>  [7] -0.8485281 -0.3183997 -2.1103602 -0.1201434  0.1106850 -0.9928425
#> [13] -0.2845092  4.9568476 -0.2275674 -1.0336130 -1.8750000  0.7071068
#> [19]  3.7712362  2.0926101
#> 
#> $arg_max_v
#>  [1] NA NA NA NA NA NA  4 18  7 12  1  2 17 12 16  7  7 18  2 18
#> 
```
