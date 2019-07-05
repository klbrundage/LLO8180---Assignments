#Week 13 Live session R code

#This week we will learn how to conduct a MLR in R
#Let's look at the phd data from async

#First, we will import the data
phd2 <- read.table("file.choose()", header=TRUE, sep="\t")

#In case you're interested here is the code to run the 
  #3D scatterplot in async
require(plot3D)

attach(phd2)

fit <- lm(PUBS ~ TIME+SALARY)

TIME.pred <- seq(0, 20, length.out = 30)
SALARY.pred <- seq(40000, 80000, length.out = 30)
xy <- expand.grid(TIME = TIME.pred, 
                  SALARY = SALARY.pred)
PUBS.pred <- matrix (nrow = 30, ncol = 30, 
                     data = predict(fit, newdata = data.frame(xy), interval = "prediction"))

fitpoints <- predict(fit) 

scatter3D(z = PUBS, x = TIME, y = SALARY, pch = 18, cex = 2, 
          theta = 20, phi = 20, ticktype = "detailed",
          xlab = "time", ylab = "salary", zlab = "pubs", clab = "pubs", 
          surf = list(x = TIME.pred, y = SALARY.pred, z = PUBS.pred, 
                      facets = NA, fit = fitpoints),
          colkey = list(length = 0.8, width = 0.4),            
          main = "phd")
detach(phd2)

#Recall in async we mean centered salary, let's do that first
#(You may want to review the week 1 R code on how to add a variable to an existing dataset)
phd2$SALARY_c <- (phd2$SALARY - mean(phd2$SALARY)

phd2

#Now, we will run the MLR with Time, Salary (centered) and citations 
  #are predictors
phd2.reg <- lm(PUBS ~ TIME + SALARY_c + CITS, data=phd2)

summary(phd2.reg)

confint(phd2.reg)

#If we want to obtain standardized regression coefficients, 
  #then we can use the QuantPsyc package
install.packages("QuantPsyc")
library(QuantPsyc)

lm.beta(phd2.reg)

#If we want to obtain the squared semi-partial and squared partial 
  #correlations, then we can use the ppcor package
install.packages("ppcor")
library(ppcor)

#We can use the ppcor package to get the semi-partial correlations 
  #among the variables
spcor(phd2[,c("PUBS","SALARY_c","TIME","CITS")])

#We can see the semi-partial correlations for pubs with the IVS is 
#                PUBS    SALARY_c         TIME        CITS
#PUBS     1.00000000    0.1073541    0.4286871  0.04087143

#To get the squared semi-partial correlations then we just square 
  #each value (I used a calculator but you could 
#do the calculation in R)

#sr^2_salary_c = .1073541^2 = .0115
#sr^2_time = .4286871^2 = .1838
#sr^2_cits = .04087143^2 = .0017

#Likewise, we will use the ppcor package to get the partial 
  #correlations among the variables
pcor(phd2[,c("PUBS","SALARY_c","TIME","CITS")])

#               PUBS  SALARY_c       TIME       CITS
#PUBS     1.00000000 0.1425430 0.49852073 0.05474607

#pr^2_salary_c = .1425430^2 =.0203
#pr^2_time = .49852073^2 = .2485
#pr^2_cits = .05474607^2 = .0030