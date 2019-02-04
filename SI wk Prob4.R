#Infection rates at a hospital above 1 infection per 100 person days at risk are believed to
#be too high and are used as a benchmark. A hospital that had previously been above the 
#benchmark recently had 10 infections over the last 1,787 person days at risk. About what is 
#the one sided P-value for the relevant test of whether the hospital is *below* the standard?

errors <- 10
rate <- 1/100
days <- 1787

test <- poisson.test(errors, T = days,r = rate, alt = "less")
round(test$p.value,2)
