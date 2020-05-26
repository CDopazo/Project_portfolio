g1<- ggplot(steps_date,
           aes(x=date,y=steps))+
  geom_bar(stat="identity",fill="dark blue") + 
  ylab("Total Steps")+
  ggtitle("Total Steps per Day")
print(g1)