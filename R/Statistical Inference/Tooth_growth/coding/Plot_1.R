library(ggplot2)
g<-qplot(supp,
      len,
      data=ToothGrowth,
      facets=~dose,
      main="Tooth growth of guinea pigs by supplement type and dosage (mg)"
      ,xlab="Supplement and Dose",
      ylab="Tooth length") + 
  geom_boxplot(aes(fill = supp))
print(g)