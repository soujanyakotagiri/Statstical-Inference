#Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and a placebo. 
#Subjects' body mass indices (BMIs) were measured at a baseline and again after having 
#received the treatment or placebo for four weeks. The average difference from follow-up to 
#the baseline (followup - baseline) was ???3 kg/m2 for the treated group and 1 kg/m2 for the 
#placebo group. The corresponding standard deviations of the differences was 1.5 kg/m2 for 
#the treatment group and 1.8 kg/m2 for the placebo group. Does the change in BMI appear to 
#differ between the treated and placebo groups? Assuming normality of the underlying data 
#and a common population variance, give a pvalue for a two sided t test.

n_x <- 9 #treated
n_y <- 9 #placebo

sigma_x <- 1.8
sigma_y <- 1.5

mu_x <- 1
mu_y <- -3

var_p <-(((n_x-1)*sigma_x^2 + (n_y-1)*sigma_y^2)/(n_x+n_y+-2))
pval <- pt((mu_y-mu_x)/ (var_p*(1/n_x+1/n_y)^0.5 ), df = n_x+n_y-2)

round(pval,3)









