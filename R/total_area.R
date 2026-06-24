#' Compute total area of a landscape
#'
#' @param landscape SpatRaster, the landscape raster (terra SpatRaster object)
#'
#' @return Total area in hectares (ha), omitting NA values.
#' @examples
#' library(terra)
#' landscape <- terra::rast(matrix(1, 10, 10)) # example raster
#' total_area(landscape)
#' @export
total_area <- function(landscape) {
  stopifnot(inherits(landscape, "SpatRaster"))
  # calculate patch areas (simplified)
  area_ha <- terra::cellSize(landscape, mask = TRUE, unit = "ha")
  total <- sum(terra::values(area_ha), na.rm = TRUE)

  return(total)
}
