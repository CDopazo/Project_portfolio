g2<- ggplot (steps_date,
             aes(x=date,y=steps)) +
  geom_line(colour="red",size=1) +
  ylab("Total Steps")+
  ggtitle("Total Steps per Day")
print(g2)