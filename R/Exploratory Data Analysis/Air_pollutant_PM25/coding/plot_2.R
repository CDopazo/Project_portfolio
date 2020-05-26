#subseting data for Baltimore city
df_2  <- DATA[DATA$fips=="24510", ]
#ploting data, Baltimore city emissions per year
df_2 <- aggregate(Emissions ~ year, df_2, sum)
#Ploting

par(mfrow = c(1, 2))
barplot(height=df_2$Emissions,
        names.arg=df_2$year,
        ylab=expression('total PM'[2.5]*' emission'),
        main=expression('Total PM'[2.5]*' for Baltimore City'), 
        col= c( "blue", "green","blue", "green"))

plot(x=df_2$year,
     y=df_2$Emissions,
     type="l",
     xlab=" ", 
     ylab=expression('total PM'[2.5]*' emission'))

g <- ggplot(df_2) + 
  geom_line(aes(year, Emissions),size=2) +
  ylab(expression('total PM'[2.5]*' emission')) +
  xlab(NULL)+
  ggtitle(expression('Total PM'[2.5]*' for Baltimore City'))
print(g)