# How to avoid headaches with(in) treepac

``` r

library(treepac)
```

As always, remember to install the package (from GitHub) to leverage its
functions:

``` r

# install.packages("remotes")
# install.packages("devtools")
devtools::install_github("ADC-405_S26/treepac")
```

## Why `treepac`?

`treepac`, beyond fulfilling the requirements for a class project, aims
to streamline frequent function calls during exploratory data analyses.
Part of the motivation behind the package’s functions came from
exercises dealing with economic time series datasets. Percentage changes
and elasticities were often utilized but takes a few lines in R to
actually calculate. `treepac`’s `pctchg` and `llreg` aim to address this
problem. Lastly, `theme_3pac` is a good add-on to ggplot objects to
improve visual clarity.

## Important Note

The following note applies to these two functions:

- `llreg`
- `pctchg`

These functions utilize base R for its dataframe slicing and selection
(instead of Tidyverse solutions), which requires the user to pass the
target column names IN quotes (both ’’ and “” are fine). On the other
hand, dataframes’ names are NOT passed in quotes. Additional information
(and parts of this note) can be accessed in each function’s help page.
