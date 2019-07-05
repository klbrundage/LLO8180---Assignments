#Week 2 Live session R code

#Welcome to R -- everything next to a # is comments and not part of the code
#First we will see how R can perform simple calculations

#Suppose we want to compute 2+2

2+2

#What about the square root of 9
sqrt(9)

#Or 9-2
9-2

#Let's compute 9^2
9^2

#We could also assign these values to objects (let's call them x and y) and then do the calculations
x <- 9
y <- 2

y+y
sqrt(x)
x-y
x^y

#Now, we will learn how to create vectors and dataframes

#Creating a vector of elements
c(1,2,3)

#Assigning a name to the vector
example <- c(1,2,3)

#Displaying the vector
example

#Another example of creating a vector
scores <- c(88,92,71)
scores

#Putting the two vectors together to create a dataframe (we are calling it df but could call it anything)
df <- data.frame(example,scores)
df

#data.frame is a function -- we will be using a lot of functions
#if you need help with a function you can just type help() with the name of the function in the ()
help(data.frame)

#Suppose we want to change the name of example to Student ID in our dataframe
names(df) <- c("Student ID", "Scores")
df

#Adding a column to the dataframe
#The $ signals we are adding a new variable to the df dataframe
#The elements are in "" because they are characters (also called a string value)
df$Sex <-c("M","F","F")
df

#If we just want to view the values from the Scores column in the data frame we can use $ followed by the column 
#we want to view
df$Sex

#Pulling in a txt file
#create a file by tablename<-txtfile name
a1<-Color
#the V in view must be capitalized
View(a1)



#########################################

#Creating an ungrouped frequency distribution

#Creating a vector from the math ability data in async
mathability <- c(6,5,6,1,4,4,5,6,5,3,5,6,7,3,5,5,4,5,4,7,2,5,5,2,6,5,5,4,5,3,5,7,6,5,3)

#Viewing the table
table(mathability)

#making the table look nice
transform(table(mathability))

#Now, let's add some information to the table (percent, cumulative frequency and cumulative percent)
#I have code below to do this but you need to change the variable name first
ungroupedvar <- mathability #change mathability to whatever the name of your ungrouped variable is

#once you change the name able then all you need to do is run these two lines of code
freq_table <- transform(table(ungroupedvar))

n=length(ungroupedvar)

transform(freq_table, Rel_Freq=prop.table(Freq), Cum_Freq=cumsum(Freq), Cum_Percent=cumsum(Freq)/n)

#Creating a grouped frequency distribution
cash <- c(.05,6,30,0,65,4.75,50,0,100,.17,15,210,2,175,42,65,2,200,0,10,0,15,20,30,12,0,30,45,7,10,80,12,28,.75,100,33,1,14,5,23.45)

cash

#Creating bins (note: to get the correct bins from the lecture notes
#we have to start at -.49 even though it does not make sense to have negative cash)
bins <- seq(-.49, 220,by=20)

help(seq)

#Putting values into bins
cashgroup <- cut(cash, bins)

#Creating table
table(cashgroup)

transform(table(cashgroup))

#Adding columns to the table, as in the ungrouped case you need to change the variable before running the code
groupedvar <- cashgroup #change cashgroup to your grouped variable name

#once you change the name able then all you need to do is run these three lines of code
freq_table <- transform(table(groupedvar))

n <- length(groupedvar)

transform(freq_table, Rel_Freq=prop.table(Freq), Cum_Freq=cumsum(Freq), Cum_Percent=cumsum(Freq)/n)

#Creating a histogram
hist(cash)