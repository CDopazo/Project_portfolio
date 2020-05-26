## merged weekdays plot 1
g1 <- ggplot(merged_weekdays_interval, 
             aes(interval,steps)) + 
  facet_grid(. ~ type)  + 
  geom_bar(stat="identity",
           fill=c(rep("blue",nrow(merged_weekdays_interval)/2),
                  rep("red",nrow(merged_weekdays_interval)/2))) +
  ylab("Average of steps") +
  xlab("Day Intervals")+
  ggtitle("Steps day patterns between weekdays and weekends histograms")
print(g1)
