# Log-Log Regression

A quick way to estimate elasticity between 2 variables.

## Usage

``` r
llreg(df, x, y)
```

## Arguments

- df:

  data frame containing the variables of interest

- x:

  predictor / explanatory variable, passed in quotes

- y:

  response variable, passed in quotes

## Value

elasticity, intercept, standard error, and p-value estimates from the
regression output

## Examples

``` r
llreg(mtcars, 'mpg', 'cyl')
#> 
#> Call:
#> lm(formula = log(df[[y]]) ~ log(df[[x]]))
#> 
#> Residuals:
#>      Min       1Q   Median       3Q      Max 
#> -0.29826 -0.09360  0.03607  0.09594  0.29890 
#> 
#> Coefficients:
#>              Estimate Std. Error t value Pr(>|t|)    
#> (Intercept)   4.39519    0.29439  14.930 1.99e-15 ***
#> log(df[[x]]) -0.88485    0.09905  -8.933 5.92e-10 ***
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#> 
#> Residual standard error: 0.1642 on 30 degrees of freedom
#> Multiple R-squared:  0.7268, Adjusted R-squared:  0.7177 
#> F-statistic:  79.8 on 1 and 30 DF,  p-value: 5.916e-10
#> 
```
