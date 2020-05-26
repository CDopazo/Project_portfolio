Data<-read.csv("data/repdata_data_StormData.csv")[,c("EVTYPE", "FATALITIES", "INJURIES", "PROPDMG", "PROPDMGEXP", "CROPDMG","CROPDMGEXP")]
library(ggplot2)
# According to the documentation the property damage column was build with a factor character instead of real numbers, so a transformation of this factors in to numbers has to be performed.

# Property Damage transformation:
Data$PROPEXP[Data$PROPDMGEXP == "0"] <- 1
Data$PROPEXP[Data$PROPDMGEXP == "1"] <- 10
Data$PROPEXP[Data$PROPDMGEXP == "2"] <- 100
Data$PROPEXP[Data$PROPDMGEXP == "3"] <- 1000
Data$PROPEXP[Data$PROPDMGEXP == "4"] <- 10000
Data$PROPEXP[Data$PROPDMGEXP == "5"] <- 1e+05
Data$PROPEXP[Data$PROPDMGEXP == "6"] <- 1e+06
Data$PROPEXP[Data$PROPDMGEXP == "7"] <- 1e+07
Data$PROPEXP[Data$PROPDMGEXP == "8"] <- 1e+08
Data$PROPEXP[Data$PROPDMGEXP == ""] <- 1
Data$PROPEXP[Data$PROPDMGEXP == "B"] <- 1e+09
Data$PROPEXP[Data$PROPDMGEXP == "h"] <- 100
Data$PROPEXP[Data$PROPDMGEXP == "H"] <- 100
Data$PROPEXP[Data$PROPDMGEXP == "K"] <- 1000
Data$PROPEXP[Data$PROPDMGEXP == "M"] <- 1e+06
Data$PROPEXP[Data$PROPDMGEXP == "m"] <- 1e+06

## '0' for invalid data:
Data$PROPEXP[Data$PROPDMGEXP == "+"] <- 0
Data$PROPEXP[Data$PROPDMGEXP == "-"] <- 0
Data$PROPEXP[Data$PROPDMGEXP == "?"] <- 0

## Real property damage value column:
Data$REALPROP <- Data$PROPDMG * Data$PROPEXP

# Crop Damage transformation:

Data$CROPEXP[Data$CROPDMGEXP == ""] <- 1
Data$CROPEXP[Data$CROPDMGEXP == "0"] <- 1
Data$CROPEXP[Data$CROPDMGEXP == "2"] <- 100
Data$CROPEXP[Data$CROPDMGEXP == "k"] <- 1000
Data$CROPEXP[Data$CROPDMGEXP == "K"] <- 1000
Data$CROPEXP[Data$CROPDMGEXP == "M"] <- 1e+06
Data$CROPEXP[Data$CROPDMGEXP == "m"] <- 1e+06
Data$CROPEXP[Data$CROPDMGEXP == "B"] <- 1e+09

## '0' for invalid exponent data:
Data$CROPEXP[Data$CROPDMGEXP == "?"] <- 0

## Real Property Crop value column:
Data$REALCROP <- Data$CROPDMG * Data$CROPEXP 

# Aggregate data for later ploting

## TOTAL INJURIES
### Total number of injuries per event type:
INJURY <- aggregate(INJURIES ~ EVTYPE, Data, FUN = sum)

## TOTAL DEATHS
### Total number of fatalities per event type
DEATH <- aggregate(FATALITIES ~ EVTYPE, Data, FUN = sum)

## DEATHS + INJURIES
### Data for plotting Death and Injury together ordering by injury numbers
### Death
DEATH_1<- DEATH
names(DEATH_1)<-c("EVTYPE","CASES")
#### Label column for Deaths
DEATH_1$CASE_TYPE<-rep("Fatalities",nrow(DEATH_1))

### Injuries
INJ_1 <- INJURY
names(INJ_1)<-c("EVTYPE","CASES")
#### Label column for Injuries
INJ_1$CASE_TYPE<-rep("Injuries",nrow(INJ_1))
#### Ordering by injuries (10 most injuring events)
INJ_1<-INJ_1[order(-INJ_1$CASES), ][1:10, ]
#### Getting the fatalities data of the most injuring events
DEATH_1<-DEATH_1[DEATH_1$EVTYPE %in% INJ_1$EVTYPE,]
#### mergint the data together
DEATH_INJ<-rbind(DEATH_1,INJ_1)


### The 10 most injuring events:
INJURY <- INJURY[order(-INJURY$INJURIES), ][1:10, ]
### The 10 most fatal events:
DEATH <- DEATH[order(-DEATH$FATALITIES), ][1:10, ]

## Total property damage in $ per event type:
PROPDMG <- aggregate(REALPROP ~ EVTYPE, Data, FUN = sum)
### The 10 most property damaging events:
PROPERTY <- PROPDMG[order(-PROPDMG$REALPROP), ][1:10, ]

## Total crop damage in $ per event type:
CROPDMG <- aggregate(REALCROP ~ EVTYPE, Data, FUN = sum)
### The 10 most crop damaging events:
CROP <- CROPDMG[order(-CROPDMG$REALCROP), ][1:10, ]

## CROP + PROPERTY 

CROP_1<-CROP
names(CROP_1)<-c("EVTYPE","COST")
CROP_1$LOSS_TYPE<-rep("Crop",nrow(CROP_1))

PROP_1<-PROPERTY
names(PROP_1)<-c("EVTYPE","COST")
PROP_1$LOSS_TYPE<-rep("Property",nrow(PROP_1))

#MERGING
CROP_PROP<-rbind(PROP_1,CROP_1)