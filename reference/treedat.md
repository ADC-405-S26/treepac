# A Simple Demonstration Dataset

A dataframe to motivate the package's available functions, generated
using R's random sampling functions. Specifically, x is supposed to
increase exponentially over time, and y's natural log is linearly
related to x's natural log. The code used to generate the dataset is
available in `treepac`'s source code.

## Usage

``` r
treedat
```

## Format

### `treedat`

A data frame with 100 rows and 4 columns:

- period:

  An integer denoting the time period from 1 to 100

- x:

  Dummy explanatory variable / predictor

- y:

  Dummy response variable whose natural log is a function of the natural
  log of x

- z:

  Dummy categorical variable
