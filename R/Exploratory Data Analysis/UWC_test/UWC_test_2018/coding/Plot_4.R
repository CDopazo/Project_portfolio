barplot(states_test$freq,
        names.arg = states_test$estados,
        col="darkgreen",
        main="Number of candidates per state for the written test",
        ylab= "Candidates",
        las= 2,
        cex.names = 0.7)