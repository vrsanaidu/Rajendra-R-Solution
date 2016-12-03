#Recursive partitioning

library(rpart)
install.packages("rpart.plot")
library("rpart.plot")
data("iris")

tree <- rpart(Species ~ ., data = iris, method = "class")
rpart.plot(tree)