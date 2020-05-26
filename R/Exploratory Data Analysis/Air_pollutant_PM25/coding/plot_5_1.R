# on-road data baltimore ciry subset data
onroad_data <- DATA[DATA$fips=="24510" & DATA$type=="ON-ROAD",  ]
# Ploting data, on road baltimore city emissions
df_5 <- aggregate(Emissions ~ year, onroad_data, sum)
# ploting
g <- ggplot(df_5) + 
  geom_line(aes(year, Emissions),size=2) +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  xlab(NULL)+
  ggtitle('Motor vehicle emissions in Baltimore City')
print(g)