#Week 7 Live session R code

#This week we learn how to conduct a two-sample t-tests in R
#We will start with independent samples t-test
#Let's use R to perform calculations for the BYOD example in async

#Calculating the t-statistic (I have created the formula for you, all you need 
#to do is type in the values)
M1 <- 84
M2 <- 80
s1 <- 4.9
s2 <- 5.1
n1 <- 22
n2 <- 21
t <- (M1-M2)/sqrt((((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2))*((1/n1)+(1/n2)))

#Calculating the p-value
#We still have to multiply the probability for two-tailed tests 
#(note: the t-table makes this easier)
#We still need to be careful with the lower.tail command (because 
#I have a negative t-statistic I am using TRUE)
#remember df = n1 + n2 - 2 = 22 + 21 - 2 = 41
2*pt(t,df=41, lower.tail=FALSE)

#Calculating effect size
#Here again, I created the formula for you but for these to work the 
#objects above have to be defined

#Calculate Cohen's d:
(M1-M2)/sqrt((((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2)))

#Calculate eta squared
#The eta square sounds more specific about the relative impact of the 
#independent variable on the dependent variable

(t^2)/(t^2+(n1 + n2 - 2))

#Now, let's learn how to conduct an independent samples t-test when given a 
#dataset
#Let's look at sample data given for example 9.2 in the book
calories<-data.frame(Speed=c("Slow","Slow","Slow","Slow","Slow","Slow","Fast","Fast","Fast","Fast","Fast","Fast"),
                     Calories=c(700,450,850,600,450,550,450,800,750,700,550,650))

calories
t.test(calories$Calories~calories$Speed, var.equal=T)
#Continuous Variable on the left and the Categorical/Binary Variable on the right
#~ Fast, Slow in one column

#Another way to enter in the data and run the t-test (do not use ~ if you have numbers)
calories.2<-data.frame(Slow=c(700,450,850,600,450,550),Fast=c(450,800,750,700,550,650))

calories.2
t.test(calories.2$Fast,calories.2$Slow,var.equal=T)
#comma used when paired samples - two rows of data i.e. Black, Color

#Now, lets run code for related samples t-test
grades<-data.frame(Pretest=c(68,74,55,81,72,59,78,65,80),
                   Posttest=c(78,79,68,92,72,65,74,71,90))

#Let's run this "by hand" first
grades$difference <- c(grades$Posttest-grades$Pretest)

grades

mean(grades$difference)
sd(grades$difference)

t <- 6.33/(5.5/sqrt(9))

2*pt(t,df=8, lower.tail=FALSE)

#Related or Paired Samples test the difference between two related means
t.test(grades$Posttest,grades$Pretest,paired=T)

#related t-test (Welch Two Sample T-Test)
t.test(grades$Posttest,grades$Pretest,related=T)