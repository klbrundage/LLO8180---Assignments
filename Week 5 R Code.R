#Week 5 Live session R code

#This week we will not do much with R other than calculate test statistics 
#and compute p-values

#For the example (M = 1100, mu0 = 1060, sigma = 195, n = 36)
(1110-1060)/(195/sqrt(36))

#Lower.Tail=TRUE if below and to the left
#Lower.Tail=FALSE if above and to the right

#Computing the p-value (Need to be careful with lower.tail argument)
2*pnorm(1.538462, lower.tail = FALSE)

#to find the P-value without having to go to the unit table
#One-Tail
pnorm(1.68, lower.tail=FALSE)

#Two-Tail
2*pnorm(1.68, lower.tail=FALSE)
