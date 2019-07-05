#Week 6 Live session R code

#This week we learn how to conduct a one-sample t-test in R
#Let's use R to perform calculations for the depression example in async

#Calculating the t-statistic
t = (35-39)/(10/sqrt(40))

#Calculating the p-value
#Instead of pnorm, we will use pt, the only difference is we have to specify the df
#We still have to multiply the probability for two-tailed tests (note: the t-table makes this easier)
#We still need to be careful with the lower.tail command (because I have a negative t-statistic I am using TRUE)

2*pt(t,df=39, lower.tail=TRUE)

#Now, let's learn how to conduct a t-test when given a dataset
#Let's look at sample data given for example 9.1 in the book

OCD <- c(20,60,48,92,50,82,48,90,30,68,43,54,60,62,94,67,63,85)
OCD

t.test(OCD,mu=77.43, conf.level=.95)

#Calculate Cohen's d:
(62-77.43)/20.94
#d=(M-u0)/sigma