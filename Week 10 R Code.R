#Week 10 Live session R code
#This week we will learn how to conduct a two-way ANOVA in R

#Let's look at the sleep data from async
sleep <- read.table(file.choose(), header=TRUE, sep="\t")

sleep.aov <- aov(sleep~Timing + Intensity + Timing:Intensity, data=Timing)
summary(sleep.aov)

#Let's create an interaction plot using R
interaction.plot(sleep$Intensity, sleep$Timing,  sleep$Sleep,
                 ylim=range(15,45),xlab="Intensity",
                 ylab="Sleep",
                 col=c("red","blue"), main="Interaction Plot")

#There is a problem because R is ordering Low, Medium and High in alphabetical order but that doesn't make sense
#However, we can force R to create it how we want it -- Low, Medium and High by using the reorder function
#R puts High in the first position (1), low in the second (2) and medium in the third (3) so we want to change that to 
#having 2, 3, 1
reorder <- factor(sleep$Intensity, levels=levels(sleep$Intensity)[c(2,3,1)])

#Now, we will modify the interaction.plot code to have reordered Intensity in place of where we originally have intensity 
interaction.plot(reorder, sleep$Timing,  sleep$Sleep,
                 ylim=range(15,45),xlab="Intensity",
                 ylab="Sleep",
                 col=c("red","blue"), main="Interaction Plot")

#If there is a significant interaction then you do not want to look at the main effects. Instead, you will want to
#look at simple main effects 
#Basically you will rerun ANOVA for each level of one of the factors

#Let's look at each level Timing. We will use the subset function to create datasets containing only one level of Timing
#We will start with Morning
sleepMorning <- subset(sleep, Timing == 'Morning')

#Now we will run a one-way ANOVA on just the Morning data
sleepMorning.aov <- aov(Sleep~Intensity, data=sleepMorning)
summary(sleepMorning.aov)

#We repeat the process for the evening data
sleepEvening <- subset(sleep, Timing == 'Evening')

sleepEvening.aov <- aov(Sleep~Intensity, data=sleepEvening)
