#Week 14 Live session R code

#This week we will learn how to conduct a chi-square test in R
#We will start with the goodness-of-fit test

#Let's look at the test format data from async
format <- c(17,54,64)

#We will run the chi-square test using chisq.test
#We need to plug in the expected proportions for each group 
  #(all equally weighted in this example)
chisq.test(format, p=c(1/3,1/3,1/3))
-----------------------------------------------
#Now, let's look at the test for independence

#First, we will import the data
graduate <- read.table(file.choose(), header=TRUE, sep="\t")

#Now, let's summarize the data in a table (call it gradtable)
gradtable <- table(graduate$Business,graduate$Doctorate)
  ##prop.table - another way to find the %##
prop.table(gradtable, 1) #rows
prop.table(gradtable, 2) #columns

chisq.test(gradtable,correct=F) #correct=F is needed to turn 
  #the continutity correction
--------------------------------------------
#Note: we use correct = F to get the same test statistic we computed 
  #by hand (no continuity corrrection)
#Or we could input the values into the table
gradtable2 <- data.frame(c(574,176), c(185,3))

chisq.test(gradtable2,correct=F)