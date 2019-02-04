#Researchers would like to conduct a study of n healthy adults to detect a four year mean 
#brain volume loss of .01 mm3. Assume that the standard deviation of four year volume loss 
#in this population is .04 mm3. About what would be the value of n needed for 90% power of 
#type one error rate of 5% one sided test versus a null hypothesis of no volume loss?

delta <- 0.01
sd <- 0.04
pow <- 0.9

n <- power.t.test(power= pow,delta , sd, sig.level = 0.05,type = "one.sample",alternative = "one.sided")$n
ceiling(n/10)*10

