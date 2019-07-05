#Kelley Brundage - HW Assignment 2

#Question 1:
#1a: 	The marginal probabilities of the task events A_1,A_2, and A_3
Task A1:  .33/1= .33
Task A2:  .34/1= .34
Task A3:  .33/1= .33

#1b: The marginal probabilities for numbers of errors
Error0: .20	
Error1: .35	
Error2+: .45

#1c: 	The conditional probability for zero errors given task A_1
.05/.33

#1d: 	The conditional probability for two or more errors given task A_2
.15/.34

#1e: 	The conditional probability of task A_3 given no errors
.13/.20

#Question 2: Explain in your own words what the central limit theorem means.
See HW

#Question 3: Assume a normally distributed population of resting heart rates 
#with ?? = 76 and ?? = 5.

#3a: Compute the z-score for a heart rate of 72. 
z <- (72-76)/5
z

#3b: What is the probability of randomly selecting someone whose heart rate 
#is below 72? 
pnorm(72, mean=76, sd=5, lower.tail=TRUE)

#3c: What is the probability of randomly selecting someone whose heart rate 
#above 80?
pnorm(80, mean=76, sd=5, lower.tail=FALSE)

#3d: What is the probability of randomly selecting someone whose heart rate 
#either below 60 or above 90?
pnorm(60, mean=76, sd=5, lower.tail=TRUE) + 
  pnorm(90, mean=76, sd=5, lower.tail=FALSE)

#3e: Compute the standard error for a sample size of 8.
5/sqrt(8)

#3f: What does the standard error measure?
See HW

#3g: What is the probability of selecting a random sample of 8 individuals 
#whose mean heart rate is below 72?
pnorm(72, mean=76, sd=5/sqrt(8), lower.tail=TRUE)

#3h: What is the probability of selecting a random sample of 16 individuals 
#whose mean heart rate is below 72?
pnorm(72, mean=76, sd=5/sqrt(16), lower.tail=FALSE)

##missed this one on the HW.  The correct answer is actually 
pnorm(72, mean=76, sd=5/sqrt(16), lower.tail=TRUE)

#3i: i.	What is happening to the probabilities as the sample size increases? 
#Briefly explain why.
See HW

#Question 4: Consider a population of size 11 and samples of size 4.

#4a: Compute the total possible samples using theoretical sampling.
11^4

#4b: Compute the total possible samples using experimental sampling.
factorial(11)/(factorial(4)*factorial(11-4))
