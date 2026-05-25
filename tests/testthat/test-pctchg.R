# since the function works on a dataframe, we need to make another for edge case testing

test_that("calculations are correct", {
# the function was specifically created to enforce NA values in edge cases
    expect_equal(pctchg(data.frame(a = c(1, 0, 1, NA, 1, 3)), 'a'),
                 data.frame(a = c(1, 0, 1, NA, 1, 3), pctchg_a = c(NA, -100, NA, NA, NA, 200)))
})

b <- c(0,1,2,3,4,5)

test_that("function doesn't take non-dfs", {
  # intentionally passing a vector instead of a df for 1st arg
  expect_error(pctchg(b, 'b'), "Assertion on 'df' failed")
})

test_that("function checks for the right columns", {
  # feeding the function a categorical vector
  expect_error(pctchg(treedat, 'z'), "Assertion on 'df[[col]]' failed", fixed = T)
  # feeding it a nonexistent column
  expect_error(pctchg(treedat, 'b'), "Assertion on 'df[[col]]' failed", fixed = T)
})
