par(mfrow = c(2, 1), cex=0.5) 
##WEEKDAYS PLOT
plot(x=week_interval$interval,
     y=week_interval$steps,
     type = "l",
     col="darkblue",
     lwd = 2,
     xlab="Day Intervals",
     ylab="Average of steps",
     main="Average of steps on Weekdays") 

##WEEKENDS PLOT
plot(x=weekends_interval$interval,
     y=weekends_interval$steps,
     type = "l",
     col="red",
     lwd = 2,
     xlab="Day Intervals",
     ylab="Average of steps",
     main="Average of steps on Weekends")

