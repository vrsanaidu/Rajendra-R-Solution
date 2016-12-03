N <- 1000

b <- 10
l <- 50
u <- 70
Mujer1 <- runif(N, l, u)
?runif
n <- 2
runif(n, min = 0, max = 1)


Hombre1 <- Mujer1 + b

beta1 <- 0.4
Mujerb0 <- (1 - beta1) * mean(Mujer1)
Hombreb0 <- mean(Hombre1) - beta1 * (mean(Mujer1) + b)

sds <- 1
Mujer2 <- Mujerb0 + beta1 * Mujer1 + rnorm(N, sd = sds)
Hombre2 <- Hombreb0 + beta1 * Hombre1 + rnorm(N, sd = sds)


datos <- data.frame(inicio = c(Mujer1, Hombre1), final = c(Mujer2, Hombre2))
datos$dif <- datos$final - datos$inicio
datos$sexo = c(rep(0, N), rep(1, N))

head(datos)

library(ggplot2)
ggplot(data = datos, aes(inicio, final, color = factor(sexo))) +
  geom_point() + stat_smooth(method = "lm") +
  geom_abline(intercept = 0, slope = 1) +
ggtitle("Paradoja de Lord") + theme_bw()

