color1 = "salmon"
color2 = "cyan3"

boxplot(auto$mpg,
        man$mpg,
        col= c(color1,color2),
        varwidth= TRUE,
        xlab= "Transmission type",
        ylab= "Miles per galon (mpg)",
        main= "Automatic vs. Manual Transmission",
        names= c("automatic","manual"))
stripchart(mpg ~ am,
           data = mtcars,
           vertical = TRUE,
           method = "jitter", 
           jitter = 0.15,
           pch = 16, 
           col = c("red","darkblue"),
           add = TRUE) 