#RScript for Homework Assignment 1: Kelley Brundage

#Question 3: Define Objects for values 10 and 2
x<-10
y<-2

#Compute the following for 3a: 10+2
a<-x+y

x+y 


#Compute the following for 3b: Squareroot of 10
b<- 10^2
b

#Compute the following 3c: Squareroot of 10-2
c=sqrt(x-y)

sqrt(x-y) 
[1] 2.828427

#Question 4: Vector
#Making a Data List (vector): When entering data you must use the syntax below.
#> Mon <- c(68, 84, 93, 68, 70)
#Here, Mon is the name of the list (you get to choose this name).
#Then, you have the 'less than sign' from the keyboard followed by the dash ('-') symbol.
#All lists must be enclosed with c( #, #, #, ... ). I think the c stands for 'combine'.
#Don't forget to separate the data values with commas.

#4a: Vector & Print Vector
vector2 <- c(1, 7, 5, 4, 6, 2, 3, 1, 6, 4, 5, 3, 2, 2, 1, 6, 4, 3)

#4b: Ungrouped Freq
table(vector2)

transform(table(vector2))

#4c: Add percentage, cumulative frequency and cumulative percent.
vtable <- matrix(vector2)
ungroupedvar <- vtable
freq_table <- transform(table(ungroupedvar))
n=length(ungroupedvar)
transform(freq_table, Rel_Freq=prop.table(Freq), Cum_Freq=cumsum(Freq), Cum_Percent=cumsum(Freq)/n)

#Question 5: sample data are scores for 18 individuals
#84, 76, 88, 86, 71, 85, 63, 76, 80, 79, 83, 66, 46, 96, 82, 73, 81, 92

#5a: Vector & Print Vector
vector5 <- c(84, 76, 88, 86, 71, 85, 63, 76, 80, 79, 83, 66, 46, 96, 82, 73, 81, 92)

print(vector5)

#5b: Grouped Frequency with 5 bins
bins <- seq (46, 96, by=10)
group<- cut(vector5, bins)
table(group)

transform(table(group))

#5c: Add percentage, cumulative frequency and cumulative percent
vtable2 <- matrix(vector5)
groupedvar <- vtable2
freq_table <- transform(table(groupedvar))
n <- length(groupedvar)
transform(freq_table, Rel_Freq=prop.table(Freq), Cum_Freq=cumsum(Freq), Cum_Percent=cumsum(Freq)/n)

#5d: Create a histogram
hist(vtable2)

#Question 6: Create a data frame using the two vectors created in problems (2) and (3). Print the data frame.
> examples <- data.frame(vector2=c(1, 7, 5, 4, 6, 2, 3, 1, 6, 4, 5, 3, 2, 2, 1, 6, 4, 3), vector5=c(84, 76, 88, 86,
                                                                                                    71, 85, 63, 76, 80, 79, 83, 66, 46, 96, 82, 73, 81, 92))
> examples

#Question 7: Consider two variables from a sample of 15 professors: the number of years since obtaining Ph.D. (time) and number of publications (pubs).

#7a: Import the phd.txt dataset into R and print out the dataset.
> PhD.File <- read.delim("~/School/EdD program - Vanderbilt/01 - Classes/LLO 8180 - Applied Statistics/Week 2 - Jan 16/PhD File.txt")
>	View(PhD.File)
> print(PhD.File)

#7b: Calculate and report the mean, median and standard deviation for each variable.
>PhD.File$Time<-as.numeric(PhD.File$Time)
>PhD.File$Pubs<-as.numeric(PhD.File$Pbs)

> mean(PhD.File$Time)

> mean(PhD.File$Pubs)

> median(PhD.File$Time)

> median(PhD.File$Pubs)

> ex1 <- c(3, 6, 3, 8,9, 6, 16, 10, 2, 5, 5, 6, 7, 11, 18)
> sd(ex1)

> ex2 <- c(18, 3,2,17,11,6,38,48,9,22,30,21,10,27,37)
> sd(ex2)
