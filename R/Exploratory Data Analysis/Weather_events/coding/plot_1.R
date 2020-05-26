# Plot 1
par(mfrow = c(1, 2), mar = c(10, 4, 3, 2), cex = 0.6)

barplot(DEATH$FATALITIES,
        width = 10, 
        names.arg = DEATH$EVTYPE, 
        col= "black",
        main = "Events with Highest Fatalities", 
        ylab = "Number of fatalities",
        las=3)

barplot(INJURY$INJURIES, 
        names.arg = INJURY$EVTYPE, 
        col= "red",
        main = "Events with Highest Injuries", 
        ylab = "Number of injuries",
        las = 3)