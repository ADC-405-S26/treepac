## code to prepare `treedat` dataset goes here

# set seed so that its replicable
set.seed(23)

period <- 1:100

# making log x and log y, also making x time-related
logx <- period * 0.03 + rnorm(100, mean = 0, sd = 0.09)
logy <- 1.5 + logx * 2 + rnorm(100, mean = 0, sd = 0.5)

# creating x and y by exp, making z for errs
x <- exp(logx)
y <- exp(logy)
z <- sample(c('a','b'), 100, T, c(0.5, 0.5))

treedat <- data.frame(period = period, x = x, y = y, z = z)
usethis::use_data(treedat, overwrite = TRUE)
