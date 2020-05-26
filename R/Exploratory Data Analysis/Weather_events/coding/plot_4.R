# Plot 4

par(mfrow = c(1, 2),
    mar = c(12, 4, 3, 2),
    cex = 0.6)

barplot(PROPERTY$REALPROP/(10^9),
        las = 3,
        names.arg = PROPERTY$EVTYPE,
        col= "brown",
        main = "Events with Highest Property Losses",
        ylab = "Cost ($ billions)",
        xlab = " ") 

barplot(CROP$REALCROP/(10^9),
        las = 3,
        names.arg = CROP$EVTYPE,
        col= "dark green",
        main = "Events With Highest Crop Losses", 
        ylab = "Cost ($ billions)",
        xlab= " ")

