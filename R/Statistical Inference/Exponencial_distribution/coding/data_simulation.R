# Libraries loading
library(ggplot2)

# Simulation: Exponential Distribution

## Parameters for the "rexp()" function:
### lambda value that actually sets the mean and the standard deviation (0,2)
lambda <- 0.2 
### The number of simulations (1000)
s <- 1000
### The number of exponencials to which the average will be calculated (40)
n <- 40
### The seed that will set the random values (123)
set.seed(123)

## The matrix of the 1000 rows corresponding to each simulations with 40 columns corresponding to each exponencial output
exp_matrix <- matrix(data=rexp(n * s, lambda), nrow=s)

## The data frame with the means of each simulation of the previous matrix
exp_means_df <- data.frame(means=apply(exp_matrix, 1, mean))

## The sampled mean of the exponencial function to later compare with the theorical mean
sample_mean<-mean(exp_means_df$means)

## The sampled variance of the exponencial function to later compare with the theorical variance
sample_var <- var(exp_means_df$means)

## The theorical mean
theo_mean<- 1/lambda

##The theorical variance (mean= 1/lambda , n=40 )
theo_var<- (1 / (lambda)^2)/n

## Diference between the theorical and sampled mean
dif_mean <- 1-(theo_mean/sample_mean)

## Diference between the theorical and sampled variance
dif_var <- (theo_var/sample_var)-1

