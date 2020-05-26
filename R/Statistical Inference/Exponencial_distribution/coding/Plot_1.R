# Plot 1
g <- ggplot(data.frame(exp_means_df),
            aes(x = means)) + 
  geom_histogram(aes(y=..density..),
                 colour = "black",
                 fill = "blue",
                 binwidth = lambda) + 
  geom_density(colour = "red",
               fill="red",
               alpha = .3) + 
  ggtitle("Distribution of Means of 1000 Exponentials of Size 40  and lamda 0.2")+
  ylab("Density")
  xlab("Exponencial Means")

print(g)