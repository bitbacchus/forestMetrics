# Compute total area of a landscape

Compute total area of a landscape

## Usage

``` r
total_area(landscape)
```

## Arguments

- landscape:

  SpatRaster, the landscape raster (terra SpatRaster object)

## Value

Total area in hectares (ha), omitting NA values.

## Examples

``` r
library(terra)
#> terra 1.9.34
landscape <- terra::rast(matrix(1, 10, 10)) # example raster
total_area(landscape)
#> [1] 0.01
```
