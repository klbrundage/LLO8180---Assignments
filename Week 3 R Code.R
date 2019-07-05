#Week 3 Live session R code

#This week we will learn how to compute normal probabilities 
#first, let's learn how to compute z-scores from raw scores

GPA <- c(3.2, 2.5, 4.0, 2.7, 3.4)

#We could do this "by hand" using R to compute the mean and standard deviation

mean(GPA)
sd(GPA)

#We see that the mean is 3.16 and standard deviation is .594
#So we could calculate any z-score we wanted using these, for example
(3.2-3.16)/.594
    #3.2 is .07 standard deviations away from the mean

#Or we could program R to compute them all for us
(GPA-mean(GPA))/sd(GPA)  #gives each one of the z scores

#can abbr FALSE with just an f
#Alternatively, we can use the scale function in R to compute the z-scores
scale(GPA, center=TRUE, scale=TRUE)

#Now, let's learn how to compute normal probabilities in R (this means we won't need to use the table)

#To find normal probabilities in R we use the pnorm function
#Let's compute the examples from async
#pnorm stands for the probability under a normal curve

  #Find P(z>1.5)  lower.tail=FALSE means to look at the upper tail
  pnorm(1.5, lower.tail=FALSE)
  
  #Find P(Z<-1.5)  lower.tail=TRUE means to look at the lower tail
  pnorm(-1.5, lower.tail=TRUE)
  
  #Find P(-1<z<1)  Find the tails and then subtract the number
  pnorm(1, lower.tail=FALSE)-pnorm(-1, lower.tail=TRUE)

#Using the pnorm function here requires us to do things differently than we did in async to find this probability
#so I will not cover this using R
#but here is the code if you are interested: pnorm(1, lower.tail=TRUE)-pnorm(-1, lower.tail=TRUE)

#Find P(z<-1.96) and P(z>1.96) 
#*Note in async there is a typo here, P(z<1.96) should be P(z<-1.96)*
pnorm(-1.96, lower.tail=TRUE) + pnorm(1.96, lower.tail=FALSE)

#IQ test example

#IQ tests are normed to have a mean of 100 and standard deviation of 15
#What is the probability an individual scores greater than 110?
z <- (110-100)/15
pnorm(z, lower.tail=FALSE)

#Alternatively, we could have just programmed this into one step by telling pnorm the mean and sd
pnorm(110, mean=100, sd=15, lower.tail=FALSE)

#What is the probability an individual scores less than 80?
pnorm(80, mean=100, sd=15, lower.tail=TRUE)

#to find the between is 
pnorm(80, mean=76, sd=5, lower.tail=TRUE) + pnorm(110, mean=76, sd=5, lower.tail=FALSE)

