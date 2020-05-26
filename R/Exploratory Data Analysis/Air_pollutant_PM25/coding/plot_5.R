# on-road data baltimore ciry subset data
df_5 <- DATA[DATA$fips=="24510" & DATA$type=="ON-ROAD",  ]
# Ploting data, on road baltimore city emissions
df_5 <- aggregate(Emissions ~ year, df_5, sum)
# ploting
par(mfrow = c(1, 2))
barplot(
  df_5$Emissions, 
  names.arg=df_5$year,
  ylab=expression(paste("Emissions","10"^"6", "tons")),
  main="Vehicle emissions in Baltimore",
  col= c("blue","green","blue","green"))

plot(x=df_5$year,
     y=df_5$Emissions,
     type="l",
     xlab=" ", 
     ylab=expression(paste("Emissions","10"^"6", "tons")))

##VIEJO
g2 <- ggplot(df_5) + 
  geom_line(aes(year, Emissions),size=2) +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  xlab(NULL)+
  ggtitle('Motor vehicle emissions in Baltimore City')
print(g2)