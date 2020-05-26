# Plot 2
g1<-ggplot(DEATH_INJ, 
           aes(EVTYPE,CASES)) +
  geom_bar(aes(fill=CASE_TYPE),stat = "identity") +
  coord_flip()+
  ggtitle("Most dangerous weather events")+
  ylab("Number of cases")+
  xlab("Weather event type") +
  labs(fill = " ")
print(g1)