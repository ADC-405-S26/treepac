# as it turns out, regex hates square brackets, hence fixed = T being passed as an argument
test_that("llreg doesn't take a categorical y-var", {
  expect_error(llreg(treedat, 'x', 'z'), "Assertion on 'df[[y]]' failed", fixed = T)
})

test_that("llreg doesn't parse a non-existent column", {
  # giving the function a categorical explanatory var
  expect_error(llreg(treedat, 'a', 'y'), "Assertion on 'df[[x]]' failed", fixed = T)
})

test_that("llreg doesn't take non-dataframes", {
  # explicitly giving the function a vector instead of a df
    expect_error(llreg(c('1', '2', '3'), z, y), "Assertion on 'df' failed")
})
