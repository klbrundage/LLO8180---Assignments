#Week 4 Live session R code

#This week we will learn how to compute normal probabilities in sampling distributions 
#Let's first use R as a calculator to compute total possible samples
#How many samples of three participants (n = 3) from a population of five people (N = 5) for theoretical sampling?

5^3

#How many samples of three participants (n = 3) from a population of five people (N = 5) for experimental sampling?
factorial(5)/(factorial(3)*factorial(5-3))

#Recall IQ test example
#IQ tests are normed to have a mean of 100 and standard deviation of 15
#Last week, we found the probability an individual scores greater than 110 two ways

z <- (110-100)/15

pnorm(z, lower.tail=FALSE)

#Alternatively, we programmed this into one step by telling pnorm the mean and sd
pnorm(110, mean=100, sd=15, lower.tail=FALSE)

#Now, let's work with the sampling distribution
#What is the probability that a sample of 9 individuals has a mean greater than 110 on an IQ test?
#First, we need to compute the standard error, then the z-score using the se
15/sqrt(9)

z <- (110-100)/5

pnorm(z, lower.tail=FALSE)

#Or like the previous problem we could have skipped computing the z-score and coded in the mean and se
#note: we still use sd for se because the se is the sd of the sampling distribution
pnorm(110, mean=100, sd=5, lower.tail=FALSE)

#Also, we could have done this in one step
pnorm(110, mean=100, sd=15/sqrt(9), lower.tail=FALSE)

#What is the probability that a sample of 25 individuals has a mean greater than 110 on an IQ test?
pnorm(110, mean=100, sd=15/sqrt(25), lower.tail=FALSE)











