test_that("theme_3pac only takes reasonable font sizes", {
  theme <- theme_3pac()
  # assertion checks
  expect_error(theme_3pac(base_size = "12"), "Assertion on 'base_size' failed")
  # checking lower bound
  expect_error(theme_3pac(base_size = -8), "Assertion on 'base_size' failed")
})

test_that("theme_3pac actually applies the plot title tweaks we want", {
  theme <- theme_3pac(base_size = 12)
  # title tweak checks
  expect_equal(theme$plot.title$face, "bold")
  expect_equal(theme$plot.title.position, "plot")
})

test_that("theme_3pac actually applies the gridline tweaks we want", {
  theme <- theme_3pac()
  # using s3_class expectations
  expect_s3_class(theme$panel.grid.minor, "element_blank")
})
