sample(1:10)
sample(1:10, size = 5)
sample(c(0, 1), 10, replace = TRUE)

dnorm(0)

dnorm(0, mean = 3, sd = 5) # its sum mean 3 and deviation 5 near by
curve(dnorm, -3, 3)
pnorm(1.5)

str(mtcars)
data(mtcars)
range(mtcars$mpg)
length(mtcars$mpg)
mean(mtcars$mpg)
median(mtcars$mpg)
var(mtcars$mpg)
sd(mtcars$mpg)
IQR(mtcars$mpg)
quantile(mtcars$mpg, 0.67)
max(mtcars$mpg)
min(mtcars$mpg)

summary(mtcars)
table(mtcars$cyl)

library(ggplot2)
qplot(mtcars$mpg, binwidth = 2)

mtcars[1:3]
cov(mtcars[1:3])
cor(mtcars[1:3])

library(reshape2)
?melt
qplot(x = Var1, y = Var2, data = melt(cor(mtcars[1:3])), fill = value, geom = "tile")
