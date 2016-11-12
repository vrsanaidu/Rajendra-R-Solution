df <- data.frame("Dependent" = c(0, 1, 2, 0, 1, 2, 3, 4),
                 "Counts" = c(2, 4, 1, 11, 5, 3, 2, 1),
                 "Indication" = c("Stay", "Stay", "Stay", "Left", "Left", "Left", "Left", "Left"))

install.packages("tidyr")
library(tidyr)

df_tidy <- spread(df, Indication, Counts)

plot(df_tidy$Dependent, df_tidy$Left, type = "l")
lines(df_tidy$Dependent, df_tidy$Stay, col = "red")