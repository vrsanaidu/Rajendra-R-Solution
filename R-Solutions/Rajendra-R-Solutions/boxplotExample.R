data <- data.frame(
Stat11 = rnorm(100, mean = 3, sd = 2),
Stat21 = rnorm(100, mean = 4, sd = 1),
Stat31 = rnorm(100, mean = 6, sd = 0.5),
Stat41 = rnorm(100, mean = 10, sd = 0.5),
Stat12 = rnorm(100, mean = 4, sd = 2),
Stat22 = rnorm(100, mean = 4.5, sd = 2),
Stat32 = rnorm(100, mean = 7, sd = 0.5),
Stat42 = rnorm(100, mean = 8, sd = 3),
Stat13 = rnorm(100, mean = 6, sd = 0.5),
Stat23 = rnorm(100, mean = 5, sd = 3),
Stat33 = rnorm(100, mean = 8, sd = 0.2),
Stat43 = rnorm(100, mean = 4, sd = 4)
)

data

boxplot(data)