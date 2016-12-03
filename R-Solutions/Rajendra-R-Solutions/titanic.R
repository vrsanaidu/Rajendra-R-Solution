str(titanictrain)
#nrow(titanictrain)
#train <- read.csv("datafiles/titanictest.csv", stringsAsFactors = FALSE)
#str(train)
table(titanictrain$Survived)
prop.table(table(titanictrain$Survived))

str(titanictest)
titanictest$Survived <- rep(0, 418)

submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "datafiles/theyallperish.csv", row.names = FALSE)

summary(titanictrain$Sex)
table(titanictrain$Sex)
prop.table(table(titanictrain$Sex, titanictrain$Survived))

prop.table(table(titanictrain$Sex, titanictrain$Survived), 1)

titanictest$Survived <- 0
titanictest$Survived[titanictest$Sex == 'female'] <- 1

submit <- data.frame(PassengerId = titanictest$PassengerId, Survived = titanictest$Survived)
write.csv(submit, file = "datafiles/theyallperish.csv", row.names = FALSE)

summary(titanictrain$Age)
titanictrain$Child <- 0
titanictrain$Child[titanictrain$Age < 18] <- 1

aggregate(Survived ~ Child + Sex, data = titanictrain, FUN = sum)
aggregate(Survived ~ Child + Sex, data = titanictrain, FUN = length)

aggregate(Survived ~ Child + Sex, data = titanictrain, FUN = function(x) { sum(x) / length(x) })

titanictrain$Fare2 <- '30+'
titanictrain$Fare2[titanictrain$Fare < 30 & titanictrain$Fare >= 20] <- '20-30'
titanictrain$Fare2[titanictrain$Fare < 20 & titanictrain$Fare >= 10] <- '10-20'
titanictrain$Fare2[titanictrain$Fare < 10] <- '<10'
aggregate(Survived ~ Fare2 + Pclass + Sex, data = titanictrain, FUN = function(x) { sum(x) / length(x) })

titanictest$Survived <- 0
titanictest$Survived[titanictest$Sex == 'female'] <- 1
titanictest$Survived[titanictest$Sex == 'female' & titanictest$Pclass == 3 & titanictest$Fare >= 20] <- 0

library(rpart)
fit <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
               data = titanictrain,
               method = "class")

plot(fit)
text(fit)

install.packages('rattle')
install.packages('rpart.plot')
install.packages('RColorBrewer')
library(rattle)
library(rpart.plot)
library(RColorBrewer)

fancyRpartPlot(fit)

Prediction <- predict(fit, titanictest, type = "class")
submit <- data.frame(PassengerId = titanictest$PassengerId, Survived = Prediction)
write.csv(submit, file = "datafiles/myfirstdtree.csv", row.names = FALSE)

fit <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
               data = titanictrain,
               method = "class",
               control = rpart.control(minsplit = 2, cp = 0))

fancyRpartPlot(fit)


