#Kelley Brundage: HW Assignment 5

#Question #1:To test whether arousal or stress levels increase as the difficulty 
#of a task increases, eight participants were asked to complete an easy, typical 
#or difficult task. Their galvanic skin response (GSR) was recorded. A GSR 
#measures the electrical signals of the skin in units called microSiemens, with 
#higher signals indicating greater arousal or stress. The data for each task is 
#given in the dataset difficulty.txt.
difficulty <- read.table(file.choose(), header=TRUE, sep="\t")
View(difficulty)

#1a: Write the null hypothesis in symbols and words
See HW

#1b: Write the alternative hypothesis in symbols and words
See HW

#1c: By hand, calculate each degrees of freedom. Show calculations.
See HW

#1d:  Use the anova function in R to obtain the test statistic and p-value. 
  #Report the ANOVA table.
difficulty.anova<-aov(Stress~Difficulty,data=difficulty)
summary(difficulty.anova)

#1e: Make a decision about the null using the p-value approach.
  dfn = 2
  dfd = 21
  fcv = 3.47

#1f: If appropriate, calculate and interpret the effect size. If not, state why.
  SSDiff = 56.37
  SSDiff
  SSTotal= (56.37+46.32)
  SSTotal
  SSDiff/SSTotal
  

#1g: Use R to conduct a post hoc analysis and interpret results.
TukeyHSD(difficulty.anova)

#1h: Write the conclusion in APA style.
See HW
SSTotal = 56.37+46.32
n2= 56.37/102.69


#Question #2: A developmental psychologist placed children in a social situation 
#in which they were either rewarded or punished (Factor A: consequence) by a 
#parent, sibling, or stranger (Factor B: type of adult). Following this social 
#situation, children were placed back in the same social situation, and the time 
#it took them (in seconds) to engage in the punished or rewarded behavior was 
#recorded. The hypothetical data are given in behavior.txt.
behavior <- read.table(file.choose(), header=TRUE, sep="\t")
View(behavior)

#2a: Write the null hypotheses in words
See HW

#2b: Write the alternative hypotheses in words
See HW

#2c: Use the anova function in R to obtain the test statistics and p-values. 
  #Report the ANOVA table.
behavior.aov <- aov(Time~Consequences + Adult + Consequences:Adult, data=behavior)
summary(behavior.aov)

#2d: Make a decision about each null hypotheses using the p-value approach.
See HW

#2e: Write conclusion in APA style.
See HW

#2f: Use R create an interaction plot. Give a brief interpretation.
interaction.plot(behavior$Consequences, behavior$Adult,  behavior$Time,
                ylim=range(15,45),xlab="Consequences",
                ylab="Time",
                col=c("red","blue"), main="Interaction Plot")                 
                  
                 
#2g: Conduct a simple main effects test and report what you find.
behaviorReward <- subset(behavior, Consequences == 'Reward')

behaviorReward.aov <- aov(Time~Adult, data=behaviorReward)
summary(behaviorReward.aov)

behaviorPunishment <- subset(behavior, Consequences == 'Punishment')

behaviorPunishment.aov <- aov(Time~Adult, data=behaviorPunishment)
summary(behaviorPunishment.aov)

