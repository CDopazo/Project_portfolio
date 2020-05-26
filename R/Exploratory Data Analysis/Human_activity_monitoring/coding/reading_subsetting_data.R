## Loading libraries and data
library(lubridate)
library(ggplot2)
df<-read.csv("data/activity.csv")

# SETTING DATES DATA

## Using library lubridate to manage the dates datas
df$date<-ymd(df$date)
## Calculating the weekdays for each date in english (because im working on spanish machine)
Sys.setlocale("LC_TIME", "English_United States.1252")
df$weekday <- weekdays(df$date)
df$weekday<-factor(df$weekday)
## Getting back to the pre-set
Sys.setlocale("LC_TIME", "Spanish_Spain.1252")

# SUBSETTING AND MANIPULATING THE DATA FOR LATER PLOTTING

## Subsetting steps number by date
steps_date<-aggregate(data=df,steps ~ date, FUN=sum, na.rm=FALSE)
## Subsetting steps mean by day interval
steps_interval<-aggregate(data=df,steps ~ interval, FUN=mean, na.rm=FALSE)
## Finding steps mean and median
steps_mean<-round(mean(steps_date$steps))
steps_median<-median(steps_date$steps)
## Finding the day interval with the maximum average of steps
max_steps_interval<-steps_interval[which.max(steps_interval$steps),1]
## Subsetting the week and the weekend days
df_weekdays<-df[df$weekday %in% list("Monday",
                                     "Tuesday", 
                                     "Wednesday",
                                     "Thursday",
                                     "Friday") ,]

df_weekends<-df[df$weekday %in% list("Saturday",
                                     "Sunday") ,]


## Subsetting steps mean by day interval in week and weekends days

week_interval<-aggregate(data=df_weekdays,steps ~ interval, FUN=mean, na.rm=FALSE)
weekends_interval<-aggregate(data=df_weekends,steps ~ interval, FUN=mean, na.rm=FALSE)

## creating a column type if the day is a day of the week or a day of the weekend
week_interval_type<-week_interval
weekend_interval_type<-weekends_interval
week_interval_type$type<-rep("Weekday",nrow(week_interval_type))
weekend_interval_type$type<-rep("Weekend",nrow(week_interval_type))
### Merging the datas together with the new column "type" that differentiate them
merged_weekdays_interval<-rbind(week_interval_type,weekend_interval_type)
merged_weekdays_interval$type<-as.factor(merged_weekdays_interval$type)
