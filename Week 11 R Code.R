#Week 11 Live session R code

#This week we will learn how to compute and analyze correlations
#Let's look at the phd data from async

#First, we will import the data
phd <- read.table(file.choose(), header=TRUE, sep="\t")

#Now we will make a scatterplot
plot(phd$Time, phd$Pubs,main="Scatterplot of Time and Pubs", 
     xlab="Time", ylab="Publications", pch=19)

#We can use R to compute the Pearson Correlation and obtain other values for the hypothesis test
cor.test(phd$Time, phd$Pubs, method=c("pearson"))

#Now, let's look the example from asyc for the spearman correlation '
english <- read.table(file.choose(), header=TRUE, sep="\t")

cor.test(english$Words, english$Grade, method=c("spearman"))

#Point-Biserial Correlation
byod <- read.table(file.choose(), header=TRUE, sep="\t")

cor.test(byod$Grade, byod$Byod)

#Phi Correlation
graduate <- read.table(file.choose(), header=TRUE, sep="\t")

table(graduate)

cor.test(graduate$Doctorate, graduate$Business)