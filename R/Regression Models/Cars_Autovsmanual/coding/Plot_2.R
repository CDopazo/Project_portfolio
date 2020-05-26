#Libraries
library(scales)

#Plotting
den_a<-density(auto$mpg)
den_m<-density(man$mpg)

plot(den_m,
     ylim=c(0,.1),
     col="darkblue",
     lwd=1,xlab="Miles per galon (mpg)",
     main="Density of MPG by Transmission Type for MtCars")
lines(den_a,
      col="red",
      lwd=1)
polygon(den_a,
        col=alpha(color1,0.5), 
        border="red") 
polygon(den_m,
        col=alpha(color2,0.5),
        border="darkblue")
legend("topright",
       c("manual","automatic"),
       lty=c(1,1),
       lwd=c(2,2),
       col=c("darkblue","red"),
       bty="")