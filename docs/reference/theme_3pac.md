# A Clean ggplot2 Theme

`theme_3pac` is a function based on `theme_bw`, meant to improve the
visual clarity of `ggplot` objects.

## Usage

``` r
theme_3pac(base_size = 12, base_family = "sans")
```

## Arguments

- base_size:

  numerical value, the size of the plot's fonts, default value is 12

- base_family:

  the family of fonts the graph is based on, default value is 'sans'

## Value

an additional function within a ggplot() call

## Examples

``` r
library(ggplot2)
#> Want to understand how all the pieces fit together? Read R for Data
#> Science: https://r4ds.hadley.nz/
ggplot(data = treedat, aes(x = x, y = y, col = z)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(title = 'Example scatter with best fit',
       subtitle = 'theme_3pac() example',
       caption = 'Data were randomly generated and are not reflective of any real-life trend') +
  theme_3pac()
#> `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```
