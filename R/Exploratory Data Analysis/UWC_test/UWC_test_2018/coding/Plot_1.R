d1<-density(candidates$Percent.Correct)
plot(d1, main= "Written test percentage of correct answers distribution n= 420 pmax=100%")
polygon(d1, col="red", border="black")
