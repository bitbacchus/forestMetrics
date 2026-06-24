# Inside test-total_area.R
test_that("Total area calculation", {
  # Load example data
  landscape <- terra::rast(matrix(1, 10, 10)) # you might want to test a more realistic landscape raster

  # Test the function
  result <- total_area(landscape)

  # Check if the result is a numeric value (this is the first unit test)
  expect_type(result, "double")

  # Check if the result is greater than zero (assuming landscape has some area)
  # This is a second unit test
  expect_true(result > 10)
})
