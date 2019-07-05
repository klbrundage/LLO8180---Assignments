#Kelley Brundage - Assignment 7

#Question #1: The data (bloodpressure.txt) represent measures on a 
  #random sample of 25 individuals with high cholesterol levels. 
  #The variables are as follows:
  #Dependent variable Y: Systolic Blood Pressure (SBP)
  #Independent variable X_1: Body Size, measured by Quetelet (QUET) 
    #Index = 100(weight/height2)
  #Independent variable X_2: Age

#1a: Using R, carry out MLR analyses to obtain raw and standardized 
  #regression coefficients. Mean center age and QUET.

#Mean Center Age:
bloodpressure$Age_c <- bloodpressure$Age - mean(bloodpressure$Age)
bloodpressure

#Mean Center Size:
bloodpressure$Size_c <- bloodpressure$Size - mean(bloodpressure$Size)
bloodpressure


bloodpressure$Age_c <- bloodpressure$Age - mean(bloodpressure$Age)
bloodpressure$Size_c <- bloodpressure$Size - mean(bloodpressure$Size)
bloodpressure

#remaining code that may be needed
bloodpressure.reg <- lm(SBP ~ Size_c + Age_c, data=bloodpressure)
summary(bloodpressure.reg)

confint(bloodpressure.reg)

lm.beta(bloodpressure.reg)

spcor(bloodpressure[,c("SBP", "Age_c", "Size_c")])

pcor(bloodpressure[,c("SBP", "Age_c", "Size_c")])
------------------------------------
#Write the regression equation
mean(bloodpressure$Age)

mean(bloodpressure$Size)

#Interpret the intercept
See HW
#Interpret the slope for QUET
See HW
#Interpret the slope for age
See HW
#Interpret the hypothesis tests for each regression coefficient
See HW

#1b: Report the coefficient of multiple determination obtained in 
  #your MLR analysis and interpret the associated hypothesis test.
summary(bloodpressure.reg)

#1c: For an individual of age 51 and QUET 3.30, obtain by hand 
  #calculation the predicted level of SBP (remember they should be 
  #mean centered). If that individual's actual SBP was found to be 
  #130, obtain the residual.
See HW

#1d: Using R, obtain the squared semi-partial correlation of Age 
  #and SBP and interpret the value.
spcor(bloodpressure[,c("SBP", "Age_c", "Size")])

#1e: Using R, obtain the squared partial correlation of Age and 
  #SBP and interpret the value.
pcor(bloodpressure[,c("SBP", "Age_c", "Size")])

----------------------------------------------
#Question #2: The Better Business Bureau (BBB) wants to determine 
  #whether a certain business is engaging in fair hiring practices. 
  #The BBB finds that a local business employs 66 men and 34 women. 
  #The general population of workers in this industry is 60% men and 
  #40% women. Conduct a chi-square goodness-of-fit test at the alpha 
  #= .05 significance level.

#2a: Write the null and alternative hypotheses
See HW

#2b: Using the chisq.test function in R, calculate the tests 
  #statistic and p-value
format <- c(66,34)
chisq.test(format, p=c(.6,.4))

#2c: Make a decision about each null hypotheses using the p-value 
  #approach.
See HW

#2d: Write a conclusion in APA format.
See HW

-------------------------------------------------
#Question #3: A researcher tests whether the political affliction 
    #of individuals is related to or independent of whether they 
    #have positive views of the economy. The researcher records the 
    #political affiliations and economic viewpoints of 105 participants. 
    #The data are contained in political.txt (Affiliation: 1 = Democrat, 
    #0 = Republican, Economy: 1 = Positive, 0 = Negative).

#3a: Using R, make a table summarizing the data (just need to report 
    #the table).
politicaltable <- table(political$Affiliation,political$Economy)
politicaltable

#3b: Write the null and alternative hypotheses
See HW

#3c: Using the chisq.test function in R, calculate the tests 
  #statistic and p-value
chisq.test(format, p=c(.47,.53))

#3d: Make a decision about each null hypotheses using the critical 
  #value approach.
See HW

#3e: Write a conclusion in APA format.
See HW
