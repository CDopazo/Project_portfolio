barplot(payment$freq,
        names.arg = payment$type,
        main="Number of candidates per school pay method",
        col=c("blue","violet","red"),
        ylab= "Candidates")