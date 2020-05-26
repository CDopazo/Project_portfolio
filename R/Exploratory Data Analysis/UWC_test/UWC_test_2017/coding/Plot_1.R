d1<-density(candidates$Puntos)
plot(d1, main= "Score distribution of written test n= 648")
polygon(d1, col="red", border="black")