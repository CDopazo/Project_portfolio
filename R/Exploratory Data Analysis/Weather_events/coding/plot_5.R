g2 <- ggplot(CROP_PROP, 
             aes(EVTYPE,COST/(10^9))) + 
  facet_grid(. ~ LOSS_TYPE)  + 
  geom_bar(stat="identity",fill=c(rep("dark green",10),rep("brown",10))) +
  ylab("Cost ($ billions)") +
  xlab(NULL)+
  ggtitle("Most dangerous weather events") +
  theme(axis.text.x = element_text(angle = 90))
print(g2)