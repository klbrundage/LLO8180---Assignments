#Week 8 Live session R code

#This week we show how to obtain confidence intervals in R for t-tests
#There is actually nothing new here because by default t.test() gives the CI

#One-sample t-test
OCD <- c(20,60,48,92,50,82,48,90,30,68,43,54,60,62,94,67,63,85)

OCD

t.test(OCD,mu=77.43, conf.level=.95)

#Independent samples t-test
calories<-data.frame(Speed=c("Slow","Slow","Slow","Slow","Slow","Slow","Fast","Fast","Fast","Fast","Fast","Fast"),
                     Calories=c(700,450,850,600,450,550,450,800,750,700,550,650))

calories
t.test(calories$Calories~calories$Speed, var.equal=T)

#Related samples t-test
grades<-data.frame(Pretest=c(68,74,55,81,72,59,78,65,80),
                   Posttest=c(78,79,68,92,72,65,74,71,90))

t.test(grades$Posttest,grades$Pretest, paired=T)

#Additional Discussion ITems for the Class
mean(x)
[copy that number]
sqrt([that number]
     theMean <- mean(x)
     sqrt(theMean)
     sqrt(mean(x))
#code that you can use to read a file that was imported, the first one is for a txt file
     data <- read.table("[name of file]", header=T)
     read.csv()
     read_xlsx()
     read_dta()
     