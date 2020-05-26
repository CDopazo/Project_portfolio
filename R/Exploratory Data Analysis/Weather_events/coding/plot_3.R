# Plot 3
g2 <- ggplot(DEATH_INJ, 
             aes(EVTYPE,CASES)) + 
  facet_grid(. ~ CASE_TYPE)  + 
  geom_bar(stat="identity",fill=c(rep("black",10),rep("red",10))) +
  ylab("Number of cases") +
  xlab(NULL)+
  ggtitle("Most dangerous weather events") +
  theme(axis.text.x = element_text(angle = 90))
print(g2)