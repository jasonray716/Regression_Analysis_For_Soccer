###########################################################################
#########               Solution for Question 1              ##############
###########################################################################

dataset <- read.csv(file = "two_legged_ties.csv", head=TRUE, sep=",")[ ,c('Result', 'Goal.difference.1')]
dataset$Goal.difference.1 <- - dataset$Goal.difference.1

a <- c(1, 2, "X")
str_key <- c("win", "loss", "draw")
confidence <- .95
i <- 1
N <- 3

confidence_interval <- c()
data <- vector("list", N)

for (item in a) {
  data[[i]] <- subset(dataset, Result==item)
  data[[i]] <- data[[i]]$Goal.difference.1
  str_main = paste("Histogram for ", str_key[[i]], "of Team 1", sep=" ")
  hist(data[[i]],
       main=str_main,
       xlab="goals of team 1",
       border="blue",
       col="green",
       prob=TRUE)
  summary(data[[i]])
  lines(density(data[[i]]))
  xestimate <- mean(data[[i]])
  data[[i]] <- c(data[[i]], xestimate)
  confidence_interval[[i]] = quantile(data[[i]], c(confidence, 1 - confidence))
  print (confidence_interval[[i]])
  i <- i + 1
}

print (confidence_interval)