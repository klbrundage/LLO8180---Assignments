#Week 9 Live session R code

#This week we will learn how to conduct a one-way ANOVA in R

#Let's use the depression example from class
depression <- read.table(file.choose(), header=TRUE, sep="\t")
View(depression)

depression.anova <-aov(Depression ~ Treatment, data = depression)
summary(depression.anova)


#Conduct a Post Hoc Test
TukeyHSD(depression.anova)

#Calculating the effect size eta_squared
eta_squared = 132.9/284.5
eta_sq(depression.anova)

#R has a package that will do this
install.packages("sjstats")

library(sjstats)

eta_sq(depression.anova)