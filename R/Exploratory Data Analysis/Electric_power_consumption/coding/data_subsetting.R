df<- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
df$Date<- as.Date(df$Date, format = "%d/%m/%Y")
daydata<-subset(df, Date== "2007/2/1" | Date== "2007/2/2")
date_time <- strptime(paste(daydata$Date, daydata$Time, sep=" "), "%Y-%m-%d %H:%M:%S")