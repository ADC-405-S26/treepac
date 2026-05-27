#' A Clean ggplot2 Theme
#'
#' @description
#' `theme_3pac` is a function based on `theme_bw`, meant to improve the visual clarity of `ggplot` objects.
#'
#'
#' @param base_size numerical value, the size of the plot's fonts, default value is 12
#' @param base_family the family of fonts the graph is based on, default value is 'sans'
#'
#' @returns an additional function within a ggplot() call
#' @export
#' @importFrom ggplot2 theme_bw theme margin element_blank element_text element_line
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = treedat, aes(x = x, y = y, col = z)) +
#'   geom_point() +
#'   geom_smooth(se = FALSE) +
#'   labs(title = 'Example scatter with best fit',
#'        subtitle = 'theme_3pac() example',
#'        caption = 'Data were randomly generated and are not reflective of any real-life trend') +
#'   theme_3pac()

theme_3pac <- function(base_size = 12, base_family = "sans")
{
  checkmate::assert_number(base_size, lower = 0)
  checkmate::assert_character(base_family)

  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold", size = 1.5 * base_size, color = '#222222', margin = margin(b = 5)),
                 plot.subtitle = ggplot2::element_text(size = base_size, color = '#999999', margin = margin(b = 10)),
                 plot.caption = ggplot2::element_text(size = 0.75 * base_size, color = '#999999', margin = margin(t = 10), hjust = 0),
                 plot.title.position = "plot",
                 plot.caption.position = "plot",
                 panel.grid.major = ggplot2::element_line(linetype = 'solid', linewidth = 0.25, color = '#999999'),
                 panel.grid.minor = ggplot2::element_blank(),
                 panel.border = ggplot2::element_blank()
                 )
}
