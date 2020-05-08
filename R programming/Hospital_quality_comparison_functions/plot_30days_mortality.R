outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11],
     main=NULL,
     xlab="30-day death rates from heart attack",
     ylab= "Hospitals Frequency",
     border="black",
     col="red")