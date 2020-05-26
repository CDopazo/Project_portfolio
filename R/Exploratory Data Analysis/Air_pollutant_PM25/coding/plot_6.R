# Subset data of onroad points for Baltimore city and L.A
df_6 <- DATA[(DATA$fips=="24510"|DATA$fips=="06037") & DATA$type=="ON-ROAD",  ]
# Ploting data, on road baltimore city  and L.A year emissions
df_6 <- aggregate(Emissions ~ year + fips, df_6, sum)
# Setting labels for the fips codes
df_6$fips[df_6$fips=="24510"] <- "Baltimore, MD"
df_6$fips[df_6$fips=="06037"] <- "Los Angeles, CA"
#Ploting
g1 <- ggplot(df_6, 
             aes(factor(year), Emissions)) + 
  facet_grid(. ~ fips)  + 
  geom_bar(stat="identity",
           fill=c("blue","green","blue","green","red","yellow","red","yellow"),
           colour="black") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  xlab(NULL)+
  ggtitle('Motor vehicle emissions, Baltimore City vs Los Angeles')
print(g1)

g2 <- ggplot(df_6, 
            aes(year, Emissions, color = fips)) + 
  geom_line(size=2) +
  ylab(expression('Total PM'[2.5]*" Emissions ")) +
  ggtitle('Motor vehicle emissions, Baltimore City vs Los Angeles')

print(g2)