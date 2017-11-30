###########################################################################
#########               Solution for Question 2              ##############
###########################################################################
# Regression analysis between goal difference in game 1                   #
# and the goal difference in game 2                                       #
###########################################################################

dataset3 <- read.csv(file = "Data set Luca.csv", head=TRUE, sep=",")[ ,c('Total.goals.1', 'Total.goals.2')]
regmodel <- lm(Total.goals.1 ~ Total.goals.2, data=dataset3)
plot(Total.goals.1 ~ Total.goals.2, data=dataset3)
abline(regmodel, col="red")
cor(dataset3$Total.goals.1, dataset3$Total.goals.2)
