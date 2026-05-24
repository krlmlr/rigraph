# Convex hull of a set of vertices

Calculate the convex hull of a set of points, i.e. the covering polygon
that has the smallest area.

## Usage

``` r
convex_hull(data)
```

## Arguments

- data:

  The data points, a numeric matrix with two columns.

## Value

A named list with components:

- resverts:

  The indices of the input vertices that constritute the convex hull.

- rescoords:

  The coordinates of the corners of the convex hull.

## Related documentation in the C library

[`convex_hull_2d()`](https://igraph.org/c/html/0.10.17/igraph-Nongraph.html#igraph_convex_hull_2d)

## References

Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford
Stein. Introduction to Algorithms, Second Edition. MIT Press and
McGraw-Hill, 2001. ISBN 0262032937. Pages 949-955 of section 33.3:
Finding the convex hull.

## See also

Other other:
[`running_mean()`](https://r.igraph.org/reference/running_mean.md),
[`sample_seq()`](https://r.igraph.org/reference/sample_seq.md)

## Author

Tamas Nepusz <ntamas@gmail.com>

## Examples

``` r

M <- cbind(runif(100), runif(100))
convex_hull(M)
#> $resverts
#>  [1] 32 77 56 15 40 72 88 97 12 98 43
#> 
#> $rescoords
#>              [,1]       [,2]
#>  [1,] 0.906323301 0.01724333
#>  [2,] 0.406075094 0.01854641
#>  [3,] 0.009857917 0.06724515
#>  [4,] 0.002019233 0.76260469
#>  [5,] 0.013840341 0.81718916
#>  [6,] 0.272015736 0.99627178
#>  [7,] 0.789792735 0.96284198
#>  [8,] 0.864617827 0.90346572
#>  [9,] 0.949707918 0.68733016
#> [10,] 0.978558208 0.40265909
#> [11,] 0.931660708 0.04572472
#> 
```
