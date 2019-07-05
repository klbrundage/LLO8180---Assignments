#Week 12 Live session R code

#This week we will learn how to conduct a SLR in R
#Let's look at the phd data from async

#First, we will import the data
phd <- read.table(file.choose(), header=TRUE, sep="\t")

#Now we will make a scatterplot
plot(phd$Time, phd$Pubs,main="Scatterplot of Time and Pubs", xlab="Time", ylab="Publications", pch=19)

#Let's run a SLR with Pubs as DV and Time as IV, we will save it to an object called phd.reg
phd.reg <- lm(Pubs ~ Time, data=phd)

#Here are the results

#Parameter estimates
phd.reg

#More information for hypothesis tests
summary(phd.reg)

#confidence intervals for parameter estimates
confint(phd.reg)

#Plotting regression line on scatterplot
abline(phd.reg)

#For a one year increase in time on the job, there is a 1.98 increase
#in the number of publications on average.

#Intercept: Average expected value of y when all x's are equal to 0.

#In Class Discussion/Example:
#Time= tim in job in years
#Pubs = count of publications

#Stock sentence for a continuous variable...
#For a one unit change in x, there is a [coefficient] unit change in y

#Time: 1.9830

