data("ToothGrowth")
Str(ToothGrowth)
nrow(ToothGrowth)
summary(ToothGrowth)
table(ToothGrowth$dose, ToothGrowth$supp)

#Exploratory analysis

library(ggplot2)

#Total length by Supp type
ggplot(aes(x=supp, y=len), data=ToothGrowth)+geom_boxplot(aes(fill = supp))+
  ggtitle("Affect of Supplements on Tooth Growth/n")

# Total length by Doselevel
ggplot(aes(x=as.factor(dose), y=len), data=ToothGrowth)+ geom_boxplot(aes(fill = as.factor(dose)))+
  ggtitle("Affect of Dose level on Tooth Growth")+facet_grid(.~supp)

#Total length by both supplementaries and dose levels
ggplot(aes(x=as.factor(dose), y=len), data=ToothGrowth)+ geom_boxplot(aes(fill = as.factor(dose)))+
  facet_grid(.~supp)+ ggtitle("Affect of both supplementaries and Dose level on Tooth Growth")

#Question 3: Use confidence intervals and/or hypothesis tests to compare tooth growth by 
#supp and dose. (Only use the techniques from class, even if there's other approaches worth considering)

#we assume the distribution to be normal
# Therefore, Null hypothesis:supplements and dose levels have no affect on tooth growth of
#Guinea pigs


#T test for differnece in tooth length means across supplement types
library(dplyr)
t.test(len ~ supp, data = ToothGrowth)

# P value is 0.06063 greater than 0.05 and also the confidence interval contains zero.so 
#therefore we are failing to reject Null Hypothesis i.e different supplement types have
#no affect on tooth growth

#T test for difference in tooth length means across Dose levels

#Creating subgroups as per dose level pairs
Toothgrowth.dose_0.5_1.0 <-  subset(ToothGrowth, subset= dose %in% c(0.5,1.0))
Toothgrowth.dose_1.0_2.0 <- subset(ToothGrowth,  subset= dose %in% c(1.0,2.0))
Toothgrowth.dose_0.5_2.0 <- subset(ToothGrowth,  subset= dose %in% c(0.5,2.0))


t.test(len ~ dose, Toothgrowth.dose_0.5_1.0, conf.level = 0.95)

t.test(len ~ dose, Toothgrowth.dose_1.0_2.0, conf.level = 0.95)

t.test(len ~ dose, Toothgrowth.dose_0.5_2.0, conf.level = 0.95)

# All the p-values are less than 0.05 and the confidence interval does not contain 
#zero.Therefore, we can assume that the average tooth length increases with increase in dose 
#levels and the null hypothesis is rejected





  
    
  
           
         