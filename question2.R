###########################################################################
#########               Solution for Question 2              ##############
###########################################################################
# Regression analysis between goal difference in game 1                   #
# and the goal difference in game 2                                       #
###########################################################################

dataset2 <- read.csv(file = "two_legged_ties.csv", head=TRUE, sep=",")[ ,c('Goal.difference', 'Goal.difference.1')]
dataset2$Goal.difference.1 <- - dataset2$Goal.difference.1
regmodel <- lm(Goal.difference ~ Goal.difference.1, data=dataset2)
plot(Goal.difference ~ Goal.difference.1, data=dataset2)
abline(regmodel, col="red")
cor(dataset2$Goal.difference, dataset2$Goal.difference.1)
