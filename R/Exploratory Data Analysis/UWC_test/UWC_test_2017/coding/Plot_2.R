par(mfrow = c(2, 2),cex=0.7)

barplot(datos1,
        names.arg = 1:17,
        col = c("red",1,1,1,1,1,1,1,"red",1,1,1,1,1,1,1,1),
        xlab = "Question",
        ylab= "Percentage of candidates aswering wrong")
barplot(datos2,
        names.arg = (18:34),
        col=c(1,1,1,1,1,1,1,1,1,1,"red",1,"red",1,1,1,"red"),
        xlab = "Question",
        ylab= "Percentage of candidates aswering wrong")
barplot(datos3,
        names.arg = 35:51,
        col=c(1,1,1,1,1,1,1,"red",1,1,1,"red",1,"red",1,1,1),
        xlab = "Question",
        ylab= "Percentage of candidates aswering wrong")
barplot(datos4,
        names.arg = 52:68,
        col=c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,"red","red",1),
        xlab = "Question",
        ylab= "Percentage of candidates aswering wrong")

