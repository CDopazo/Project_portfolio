#subseting baltimore city
df_3  <- DATA[DATA$fips=="24510", ]
#Ploting data, Baltimore city emission per year and per type of emission.
df_3 <- aggregate(Emissions ~ year + type, df_3, sum)
#Ploting

g1 <- ggplot(df_3, 
             aes(factor(year), Emissions)) + 
  facet_grid(. ~ type)  + 
  geom_bar(stat="identity",
           fill=c("blue","green","blue","green","red","yellow","red","yellow","blue","red","blue","red","blue","yellow","blue","yellow"),
           colour="black") +
  ylab(expression('Total PM'[2.5]*" Emissions ")) +
  xlab(NULL)+
  ggtitle('Total Emissions per type for Baltimore City')
print(g1)

g2 <- ggplot(df_3, 
            aes(year, Emissions, color = type)) + 
  geom_line(size=2) +
  ylab(expression('Total PM'[2.5]*" Emissions ")) +
  ggtitle('Total Emissions per type for Baltimore City')

print(g2)