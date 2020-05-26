g2 <- ggplot(merged_weekdays_interval, 
             aes(interval,steps, color = type)) + 
  geom_line(size=1) +
  ylab("Average of steps") +
  xlab("Day Intervals")+
  ggtitle("Steps day patterns between weekdays and weekends timelines")

print(g2)
