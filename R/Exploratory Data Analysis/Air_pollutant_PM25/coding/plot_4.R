# Merge of the National Emissions Inventory data with the SCC CODE data.
df_4 <- merge(DATA, CODE, by="SCC")
# Logical vector pointing the rows with coal points
carbon_pointer <- grepl("coal", df_4$Short.Name, ignore.case=TRUE)
# new df with the carbon data only
df_4 <- df_4[carbon_pointer, ]
# Ploting data, emissions of carbon sources
df_4 <- aggregate(Emissions ~ year, df_4, sum)
# Ploting
par(mfrow = c(1, 2))
barplot(
  (df_4$Emissions)/10^6, 
  names.arg=df_4$year,
  main='US Emissions from coal sources',
  ylab=expression(paste("Emissions","10"^"6", "tons")),
  col= c("red","green","red","green"))

plot(x=df_4$year,
     y=df_4$Emissions/10^6,
     type="l",
     xlab=" ", 
     ylab=expression(paste("Emissions","10"^"6", "tons")))

###VIEJO
g2 <- ggplot(df_4) + 
  geom_line(aes(year, Emissions/10^6),size=2) +
  ylab(expression(paste("Emissions","10"^"6", "tons"))) +
  xlab(NULL)+
  ggtitle('Total US Emissions from coal sources from 1999 to 2008')
print(g2)