#' Log-Log Regression
#'
#' @description
#' A quick way to estimate elasticity between 2 **positive** variables.
#'
#' @param df data frame containing the variables of interest
#' @param x **positive** predictor / explanatory variable, passed in quotes
#' @param y **positive** response variable, passed in quotes
#'
#' @returns elasticity, intercept, standard error, and p-value estimates from the regression output
#' @export
#' @importFrom checkmate assert_data_frame assertNumeric
#' @importFrom stats lm
#'
#' @examples llreg(mtcars, 'mpg', 'cyl')
llreg <- function(df, x, y)
{
  checkmate::assert_data_frame(df)
  checkmate::assertNumeric(df[[x]], lower = 1e-12)
  checkmate::assertNumeric(df[[y]], lower = 1e-12)

  summary(lm(log(df[[y]]) ~ log(df[[x]])))
}
