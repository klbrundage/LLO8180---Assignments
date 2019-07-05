#Kelley Brundage - HW 6 R Code

#Question #1: A professor notices that more and more students are 
  #using their laptop computers in class to take notes. He wonders 
  #if this may improve academic success. To test this, the professor 
  #records the number of times each student uses his or her laptop 
  #during a class for one semester (Laptop) and the final grade in 
  #the class out of 100 points (Grade). The data are in laptop.txt.

#1a: Create a scatterplot and interpret. Does it seem to suggest 
#there is a relationship?
plot(laptop$Laptop, laptop$Grade,main="Scatterplot of Laptop & Grades", 
     xlab="Laptop", ylab="Grade", pch=19)

--------------------------------------------------------------------
#Question #2: The professor wants to conduct a hypothesis test to 
  #test whether or not there is a significant relationship between 
  #Laptop and Grade at the .05 level of significance.

#2a: Write the null hypothesis and alternative hypothesis in symbols
See HW

#2b: Using R, obtain the correlation coefficient and report the 
  #output for the hypothesis test
cor.test(laptop$Laptop, laptop$Grade, method=c("pearson"))

#2c: Make a decision about the null hypotheses using the p-value 
  #approach
See HW

#2d: Write conclusion in APA style
See HW

#2e: If appropriate, calculate the effect size. If not, state why.
r2<-.14^2
r2

------------------------------------------------------------------
#Question #3: A psychologist believed that as children get older, 
  #they engage in more "inactive activities" such as playing computer 
  #games, watching TV and surfing the internet. She collected data 
  #from 10 children. She recorded the age of each child and the 
  #amount of activity (in hours) the child engaged in per week. 
  #The table below gives the data for this hypothetical study (it is 
  #also available in activity.txt).


#3a: Using R, obtain a scatterplot of the data. Discuss the 
  #relationship between age and activity based on the scatterplot.
plot(activity$Age, activity$Activity,main="Scatterplot of Age & Activity", xlab="Age", ylab="Activity", pch=19)

#3b: Using R, obtain the simple linear regression linear regression 
  #line predicting activity from age.
activity.reg <- lm(Activity ~ Age, data=activity)
activity.reg

#3c: Interpret the intercept and slope of the regression line
See HW

#3d: By hand, predict the amount of activity for age = 14
Y = a+b(X)

#3e: By hand, calculate the residual for age = 14
e = Y - Y
e10= 14 - 92.6768
e10= -78.6768

#3f: Using R output, test the null hypothesis that the slope 
  #coefficient is zero using the p-value approach. Write one 
  #sentence interpreting the meaning of this result. Make sure to 
  #report the test statistic and p-value. 
summary(activity.reg)

#3g: Using R, obtain and report the 95% CI for the slope 
  #coefficient. Explain how we can use it to make a decision about 
  #the null hypothesis from part (f).
confint(activity.reg)

#3h: Using R output, test the null hypothesis that the population 
  #coefficient of determination is zero using the p-value approach, 
  #and write one sentence interpreting your result. Make sure to 
  #report the test statistic and p-value. 
summary(activity.reg)

#3i: How do the test statistics in (f) and (h) mathematically 
  #relate to each other?
See HW

  