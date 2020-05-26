barplot(schools$freq,
        names.arg = schools$type,
        main="Number of candidates per school pay method",
        col=c("blue","violet","red"),
        ylab= "Candidates")