#Kelley Brundage: Assignment 3 HW

#Question 1:  According to ETS, the Graduate Record Exams (GRE) quantitative 
#section has a population mean of 151.3 and population standard deviation of 8.7. 
#Suppose a test prep company claims that test takers who have taken their 
#quantitative prep courses score higher on the quantitative section. To 
#evaluate the claim, you decided to take a random sample of 80 individuals 
#who took the quantitative prep courses. You calculated the mean GRE 
#quantitative section of the sample to be 153. For the following questions, 
#assume we are conducting a two-tailed hypothesis test and the 
#alpha = .05 level. 

(M = 151.3, mu = 153, sigma = 8.7, n = 80)

#1a: Write the null hypothesis in symbols and words
See HW

#1b: Write the alternative hypothesis in symbols and word
See HW

#1c: Calculate the test statistic by hand or using R
t1 = (151.3-153)/(8.7/sqrt(80))
t1

#1d: Compute the p-value using R
2*pnorm(1.747731, lower.tail = FALSE)

#1e: Make a decision about the null using the critical value approach
See Hw

#1f: Make a decision about the null using the p-value approach
See HW

#Question 2: Suppose in the last question we decided to use a one-tailed test 
#instead of a two-tailed test.

#2a: Rewrite the alternative hypothesis (in words and symbols) to reflect 
    #a one-tailed test
See HW

#2b: What would the p-value be? 
pnorm(1.747731, lower.tail=F)

#2c: What decision would you make? 
     #Does this agree with the decision from the two-tailed test?
See HW

#Question 3:A quality control division at a company is responsible for 
#ensuring the weight of packages meets standards. To do this, the division 
#routinely measures randomly selected packages. A random sample of 30 
#packages whose packaging states that the contents weigh 10 pounds is 
#collected and weights are recorded (see weights.txt). For the following 
#questions, assume we are conducting a two-tailed hypothesis test and the 
#alpha = .05 level. 
(M = 9.866667, mu = 10, sigma = .73, n = 30)

hw3<-Weight
View(hw3)
mean(hw3$weight)
sd(hw3$weight)

#3a: Write the null hypothesis in symbols and words
See HW

#3b: Write the alternative hypothesis in symbols and words
See HW

#3c: Compute the test statistic by hand or in R (you can use R to find the mean and standard deviation)
#M-mu0/sigma/sqrt(n)
t=(9.866667-10)/(.73/sqrt(30))
t

#3d: What is the degrees of freedom value in this case?  (n-1 df)
30-1

#3e: Use R (the pt function) to compute the p-value
2*pt(t,df=29, lower.tail=TRUE)
or
.1587*2 = pvalue #cv from the unit analysis table

#3f: Use the t-test function in R to confirm results in parts (c) and (d)
t.test(hw3$weight, mu=10, conf.level = .95)

#3g: Make a decision about the null using the p-value approach
See HW

#3h: Calculate Cohen's d by hand or in R, if appropriate. If not, state why.
See HW

