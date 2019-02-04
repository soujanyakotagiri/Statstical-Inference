#A pharmaceutical company is interested in testing a potential blood pressure lowering medication. 
#Their first examination considers only subjects that received the medication at baseline then 
#two weeks later. The data are as follows (SBP in mmHg)

#Subject	Baseline	Week 2
#       1	140	     132
#       2	138	     135
#       3	150	     151
#       4	148	     146
#       5	135	     130
#Consider testing the hypothesis that there was a mean reduction in blood pressure? Give the P-value for the associated two sided T test.

#(Hint, consider  that the observations are paired.

subject <- c(1,2,3,4,5)
Baseline <- c(140,138,150,148,135)
Week2   <- c(132,135,151,146,130)
examination <- data.frame(subject,Baseline,Week2)
examination
test <- t.test(x = examination$Baseline, y= examination$Week2, alt = "two.sided",paired = TRUE)
#test gives t value,de and pvalue type test and see
pval <- test$p.value
round(pval,3)
pval


