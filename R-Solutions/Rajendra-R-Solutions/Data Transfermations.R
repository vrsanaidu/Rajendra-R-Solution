v <- c(40,2,83,28,58)
f <- factor(c("A","C","C","B","C"))

library(MASS)

split(Cars93$MPG.city, Cars93$Origin)
