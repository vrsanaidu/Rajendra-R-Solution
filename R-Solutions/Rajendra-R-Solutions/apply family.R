#apply: Description:“Returns a vector or array or list of values obtained by applying a function to margins of an array or matrix. ”
    m <- matrix(c(1:10, 11:20), nrow = 10, ncol = 2)
    m
    #mean of rows
    apply(m, 1, mean)
    #mean on columns
    apply(m, 2, mean)

    #devide by 2 on all elements
    apply(m, 1:2, function(x) x / 2)

#By
?by

attach(iris)
head(iris)
by(iris[, 1:4], Species, colMeans)

?lapply

require(stats);
require(graphics)

x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE, FALSE, FALSE, TRUE))
# compute the list mean for each list element
lapply(x, mean)
# median and quartiles for each list element
lapply(x, quantile, probs = 1:3 / 4)
sapply(x, quantile)
i39 <- sapply(3:9, seq) # list of vectors
sapply(i39, fivenum)
vapply(i39, fivenum,
       c(Min. = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, Max. = 0))

## sapply(*, "array") -- artificial example
(v <- structure(10 * (5:8), names = LETTERS[1:4]))
f2 <- function(x, y) outer(rep(x, length.out = 3), y)
(a2 <- sapply(v, f2, y = 2 * (1:5), simplify = "array"))
a.2 <- vapply(v, f2, outer(1:3, 1:5), y = 2 * (1:5))
stopifnot(dim(a2) == c(3, 5, 4), all.equal(a2, a.2),
          identical(dimnames(a2), list(NULL, NULL, LETTERS[1:4])))

hist(replicate(100, mean(rexp(10))))

## use of replicate() with parameters:
foo <- function(x = 1, y = 2) c(x, y)
# does not work: bar <- function(n, ...) replicate(n, foo(...))
bar <- function(n, x) replicate(n, foo(x = x))
bar(5, x = 3)

md <- c(1, 3, 5, 7,9)
median(md,na.rm=FALSE)


