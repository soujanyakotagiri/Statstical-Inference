
#part 1 :Simulation 
   # a: Show the sample mean and compare it to the theoretical mean of the distribution.

n <- 40
stimulations <- 1000
lamda <- 0.2

mean_exp <- NULL
stimulated_means <- NULL

for(i in 1:1000)
stimulated_means <- c(stimulated_means, mean(rexp(n,lamda)))  

#Sample mean
mean_exp <- mean(stimulated_means)
mean_exp



#caluclating Theoretical mean

Theo_mean <- 1/lamda
Theo_mean

#There fore theoretical mean and sample mean are almost equal


#b:Show the sample mean and compare it to the theoretical mean of the distribution.

#Caluclating sample variance

var_exp <- NULL

var_exp <- var(stimulated_means)

var_exp

#Caluclating Theoretical Variance

1/(lamda^2*n)


#Therefore theoretical variance and sample variance are almost the same

#c.show that the distribution is apporoximately normal


#plotdata <- data.frame(stimulated_means);
#m <- ggplot(plotdata, aes(x = stimulated_means)); 
#m <- m + geom_histogram(aes(y=..density..), binwidth = 0.4,colour="black", 
                        fill = "blue")
#m + geom_density(colour="red", size=1)



data <- as.data.frame(stimulated_means)
ggplot(data, aes(x = stimulated_means)) +
geom_histogram(binwidth = 0.4, color = 'black', fill = 'red', aes(y = ..density..)) +
stat_function(fun=dnorm, color = 'blue',args =list(mean=lamda^-1, sd=(lamda*sqrt(n))^-1), 
                                        size=2)+
xlab('Sample mean') +
ylab('Density') +
ggtitle('Distribution of Exponential sample mean')

#Due to the central limit theorem (CLT), the distribution of averages of 40 exponentials is very close to a normal distribution.