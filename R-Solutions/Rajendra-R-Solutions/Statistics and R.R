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

mtcars

lmfit = lm(mtcars$mpg ~ mtcars$cyl) # to fit into linear model
lmfit
summary(lmfit)

anova(lmfit) # to analysis, use anova function

plot(mtcars$cyl, mtcars$mpg)
abline(lmfit)

# binomal test
binom.test(x = 92, n = 315, p = 1 / 6)

#student t test
boxplot(mtcars$mpg, mtcars$mpg[mtcars$am == 0], ylab = "mpg", names = c("overall", "automobile"))
abline(h = mean(mtcars$mpg), lwd = 2, col = "red")
abline(h = mean(mtcars$mpg[mtcars$am == 0]), lwd = 2, col = "blue")

mpg.mu = mean(mtcars$mpg)
mpg_am = mtcars$mpg[mtcars$am == 0]
t.test(mpg_am, mu = mpg.mu)

boxplot(mtcars$mpg ~ mtcars$am, ylab = 'mpg', names = c('automatic', 'manual'))
abline(h = mean(mtcars$mpg[mtcars$am == 0]), lwd = 2, col = "blue")
abline(h = mean(mtcars$mpg[mtcars$am == 1]), lwd = 2, col = "red")

t.test(mtcars$mpg ~ mtcars$am)