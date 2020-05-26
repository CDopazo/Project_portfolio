# Plotting:
plot(date_time, 
     daydata$Sub_metering_1 ,
     ylab="Energy Submetering", 
     xlab="", 
     type="l" )

lines(date_time, 
      daydata$Sub_metering_2, 
      col= "red")

lines(date_time, 
      daydata$Sub_metering_3, 
      col= "blue")

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), 
       lty=1, 
       lwd=2)