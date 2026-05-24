# Sample vectors uniformly from the volume of a sphere

Sample finite-dimensional vectors to use as latent position vectors in
random dot product graphs

## Usage

``` r
sample_sphere_volume(dim, n = 1, radius = 1, positive = TRUE)
```

## Arguments

- dim:

  Integer scalar, the dimension of the random vectors.

- n:

  Integer scalar, the sample size.

- radius:

  Numeric scalar, the radius of the sphere to sample.

- positive:

  Logical scalar, whether to sample from the positive orthant of the
  sphere.

## Value

A `dim` (length of the `alpha` vector for
[`sample_dirichlet()`](https://r.igraph.org/reference/sample_dirichlet.md))
times `n` matrix, whose columns are the sample vectors.

## Details

`sample_sphere_volume()` generates uniform samples from \\S^{dim-1}\\
(the `(dim-1)`-sphere) i.e. the Euclidean norm of the samples is smaller
or equal to `radius`.

## Related documentation in the C library

[`sample_sphere_volume()`](https://igraph.org/c/html/0.10.17/igraph-Nongraph.html#igraph_sample_sphere_volume)

## See also

Other latent position vector samplers:
[`sample_dirichlet()`](https://r.igraph.org/reference/sample_dirichlet.md),
[`sample_sphere_surface()`](https://r.igraph.org/reference/sample_sphere_surface.md)

## Examples

``` r
lpvs.sph.vol <- sample_sphere_volume(dim = 10, n = 20, radius = 1)
RDP.graph.4 <- sample_dot_product(lpvs.sph.vol)
vec.norm <- apply(lpvs.sph.vol, 2, function(x) {
  sum(x^2)
})
vec.norm
#>  [1] 0.9682255 0.9928059 0.9582690 0.8540297 0.8799270 0.9693010 0.8753765
#>  [8] 0.3191036 0.7805751 0.8704425 0.9139700 0.8878726 0.9458558 0.9543874
#> [15] 0.9009769 0.8115490 0.9524104 0.9370572 0.7502122 0.9943689
```
