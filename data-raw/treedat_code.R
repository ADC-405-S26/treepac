## code to prepare `treedat` dataset goes here

# set seed so that its replicable
set.seed(23)

time <- 1:100

# making log x and log y, also making x time-related
logx <- time * 0.03 + rnorm(100, mean = 0, sd = 0.09)
logy <- 1.5 + logx * 2 + rnorm(100, mean = 0, sd = 0.5)

# creating x and y by exp
x <- exp(logx)
y <- exp(logy)

treedat <- data.frame(time = time, x = x, y = y)
usethis::use_data(treedat, overwrite = TRUE)
