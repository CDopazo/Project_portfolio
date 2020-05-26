# subsetting all the emissions per year
df_1 <- aggregate(Emissions ~ year, DATA, sum)
#Ploting
library(ggplot2)
par(mfrow = c(1, 2))
barplot(
  df_1$Emissions/10^6, 
  names.arg=df_1$year,
  ylab=expression(paste("Emissions","10"^"6", "tons")),
  main="US Total PM2.5 Emissions",
  col= c("blue","red","blue","red"))

plot(x=df_1$year,
     y=df_1$Emissions/10^6,
     type="l",
     xlab=" ", 
     ylab=expression(paste("Emissions","10"^"6", "tons")))

g <- ggplot(df_1) + 
  geom_line(aes(year, Emissions),size=2) +
  ylab(expression(paste("Emissions","10"^"6", "tons"))) +
  xlab(NULL)+
  ggtitle("US Total PM2.5 Emissions")
print(g)