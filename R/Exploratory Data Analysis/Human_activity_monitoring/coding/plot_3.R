g1<-ggplot(steps_interval, 
           aes(x=interval,y=steps)) +
  geom_bar(stat = "identity", fill = "dark green")+
  ylab("Average number of Steps") +
  xlab("Day intervals") +
  ggtitle("Average Number of Steps by Intervals in a Day")
print(g1)


g2<-ggplot(steps_interval, 
          aes(x=interval,y=steps)) +
  geom_line(size=1,colour="dark green") +
  ylab("Average number of Steps") +
  xlab("Day intervals") +
  ggtitle("Average Number of Steps by Intervals in a Day")
print(g2)