#A sample of 9 men yielded a sample average brain volume of 1,100cc and a standard deviation 
#of 30cc. What is the complete set of values of ??0 that a test of H0:??=??0 would fail to reject 
#the null hypothesis in a two sided 5% Students t-test?

#this is the inverse of a two sided test and the inverse is confidence interval


n <- 9
mu <- 1100
s <- 30
quantile <- 0.975

c.I <- mu + c(-1,1)*qt(quantile,df= n-1)*s/sqrt(n)
c.I
