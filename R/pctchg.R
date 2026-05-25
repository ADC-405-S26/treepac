#' Calculating Percentage Changes
#'
#' @description
#' `pctchg` takes a dataframe and a numeric column in it to calculate percentage changes from one period to the next. If values are missing/0, the function will return 0 for that observation in the "pctchg_" column. Time series dataframes recommended.
#'
#' @param df dataframe containing column of interest
#' @param col name of the column, passed in quotes
#'
#' @returns a new dataframe with an additional column containing "pctchg_"
#' @export
#'
#' @examples pctchg(treedat, 'x')
pctchg <- function(df, col)
{
  checkmate::assert_data_frame(df)
  checkmate::assert_numeric(df[[col]])

  n <- nrow(df)
  new_col_name <- paste0("pctchg_", col)
  df[[new_col_name]] <- NA_real_

  for (i in 2:n)
  {
    prev <- df[[col]][i - 1]
    curr <- df[[col]][i]
    if (is.na(curr) | is.na(prev) | prev == 0)
    {
      df[[new_col_name]][i] = NA_real_
    }
    else
    {
      df[[new_col_name]][i] = ((curr - prev)/prev) * 100
    }
  }
  return(df)
}
