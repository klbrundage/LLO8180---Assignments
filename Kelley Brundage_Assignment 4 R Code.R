#Kelley Brundage: HW Assignment 4

#Question #1:
#A researcher wants to test whether color can influence recall of words in a 
#list.o test this, the researcher displays 20 words on a computer screen. 
#Ten words are in color, and 10 words are in black. All words are presented 
#on a white background. Participants are given 1 minute to view the list, 
#and then the list is taken away and participants are allowed 1 additional 
#minute to write down as many words as they can recall. The researcher records 
#the number of colored versus black words accurately recalled. The results are
#in color.txt. Conduct a related samples t-test to test whether the color of 
#words in the list influenced recall. Use R to a two-tailed test, alpha = .05. 

a1<-Color
View(a1)
M1<-mean(a1$Color)
M2<-mean(a1$Black)
sd1<-sd(a1$Color)
sd2<-sd(a1$Black)
n1=22

M1 = 6.045455, M2 = 4.272727, sd1 = 1.96341, sd2 = 2.413885

a1$difference<-c(a1$Color-a1$Black)
mean(a1$difference)
sd(a1$difference)

#Cohen's D:
d<-mean(a1$difference)/(sd(a1$difference)/sqrt(22))
d

#1a: Write the null hypothesis in symbols and words
See HW

#1b: Write the alternative hypothesis in symbols and words
See HW

#1c: By hand, calculate the degrees of freedom. Show calculation.
df = n1 -1
22 - 1

  #tcv=2.080

#1d: Use the t-test function in R to obtain the test statistic and p-value
mean(a1$difference)
sd(a1$difference)
a1
t.test(a1$Color,a1$Black,paired=T)

#1e: Make a decision about the null using the p-value approach
See HW

#1f: Write the conclusion in APA style
See HW

#1g: Using R, compute and report the 95% CI.
a1
t.test(a1$Color,a1$Black,var.equal=T)

#1h: Interpret the 95% CI.
See HW

#1i: Using the CI, make a decision about the null hypothesis. Be sure to explain your reasoning.
See HW

#1j: Does this agree with your decision from part (e)?
See HW
  
#Question #2:
#Researchers were interested in the effect of sleep on memory consolidation. 
#Twenty-four participants were randomly assigned to either a "Sleep" or 
#"No-Sleep" group, such that there were 12 participants in each group. On the 
#first day, all participants were flashed pictures of 15 different objects on 
#a computer screen and asked to remember as many objects as possible. That 
#night, the "Sleep" group got an ordinary night's sleep. The "No-Sleep" group 
#was kept awake until the second night. All participants got an ordinary night's
#sleep on the second and third nights. On the fourth day, all participants were
#tested to see how many of the original 15 objects they remembered. The data 
#are in sleep.txt. Conduct an independent samples t-test, two-tailed, 
#alpha = .05. 

b1<-Sleep
View(b1)
M3<-mean(b1$Sleep)
M4<-mean(b1$NoSleep)
sd3<-sd(b1$Sleep)
sd4<-sd(b1$NoSleep)
n3=12
n4=12

M3 = 11.41667, M4 = 9.5, sd3 = 2.065224, sd4 = 2.153222

  #Cohen's D:
  d<-(M3-M4)/sqrt((((n3-1)*sd3^2+(n4-1)*sd4^2)/(n3+n4-2)))
  d

#2a: Write the null hypothesis in symbols and words
See HW

#2b: Write the alternative hypothesis in symbols and words
See HW

#2c: By hand, calculate the degrees of freedom. Show calculation
df = n3 + n4 - 2
     12 + 12 - 2
  #tcv=2.074

#2d: Use the t-test function in R to obtain the test statistic and p-value
b1
t.test(b1$Sleep,b1$NoSleep,var.equal=T)

#2e: Make a decision about the null using the p-value approach
See HW

#2f: Write the conclusion in APA style
See HW

#2g: Using R, compute and report the 95% CI.
b1
t.test(b1$Sleep,b1$NoSleep,var.equal=T)

#2h: Interpret the 95% CI.
See HW

#2i: Using the CI, make a decision about the null hypothesis. Be sure to explain your reasoning.
See HW

#2j. Does this agree with your decision from part (e)?
See HW
  