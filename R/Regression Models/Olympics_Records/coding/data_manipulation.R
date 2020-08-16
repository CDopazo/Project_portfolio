#loading libraries:
library(dplyr)
library(ggplot2)
library(muStat)
library(magrittr)

#loading data
olympics <- read.csv("data/olympics.csv", sep="")

# Data Manipulation
## Own country hypothesis analysis:
###  Giving numerical factor values to the medals none= 0, Bronze=1,Silver=2,Gold=3.
olympics$medal_number <- case_when(
  olympics$Medal == "Bronze" ~ "1",
  olympics$Medal == "Silver" ~ "2",
  olympics$Medal == "Gold" ~ "3",
  is.na(olympics$Medal) ~ "0")

olympics$medal_number<-as.factor(olympics$medal_number)

### Adding a Binomial/boolean factor column, 1 if any medal, 0 if no medal.
#### Medal awarding binomial factor added
olympics$medal_factor <- case_when(
  olympics$medal_number == "0" ~ "0",
  olympics$medal_number == "1" ~ "1",
  olympics$medal_number == "2" ~ "1",
  olympics$medal_number == "3" ~ "1")

# Regression Models:

## Reg 1: Weight Vs Height by Sport

### Function that generates a dataset with the Sport and the lmodel with Rsquared and pvalues
x=2
sports<-as.data.frame(table(olympics$Sport))[,1]
df <- data.frame(Sport=character(),
                 Rsquared=numeric(),
                 Pvalue_1=numeric(),
                 stringsAsFactors=FALSE)
while (x<=length(sports)) {
  spe_sport<-sports[x]
  df_spe_sport<-olympics[which(olympics$Sport==spe_sport),]
  try(model<-lm(Weight ~ Height, data = df_spe_sport))
  newdf<-data.frame(Sport=spe_sport,
                    Rsquared= summary(model)$r.squared,
                    Pvalue_1=round(summary(model)$coefficients[8]),3)
  df<-rbind(df,newdf)
  x=x+1
}

we_hei<-df
we_hei<-we_hei[we_hei$Pvalue<=0.5,]
we_hei<-we_hei[order(-we_hei$Rsquared),]

## Reg 2: Total Participation vs Time by Season

years<-aggregate(data=olympics, Name ~ Year + Season,FUN=NROW)
years_winter<-years[years$Season=="Winter",]
years_summer<-years[years$Season=="Summer",]
lm_winter<-lm(Name ~ Year, data = years_winter)
lm_summer<-lm(Name ~ Year, data = years_summer)

## Reg 3: Participation by Sex by Year and by season

sex<-aggregate(data=olympics, Name ~ Year + Sex + Season,FUN=NROW)
### male participation summer
male_summer<-sex[sex$Sex=="M",]
male_summer<-male_summer[male_summer$Season=="Summer",]
### male participation winter
male_winter<-sex[sex$Sex=="M",]
male_winter<-male_winter[male_winter$Season=="Winter",]
### female participation summer
female_summer<-sex[sex$Sex=="F",]
female_summer<-female_summer[female_summer$Season=="Summer",]
### female participation winter
female_winter<-sex[sex$Sex=="F",]
female_winter<-female_winter[female_winter$Season=="Winter",]

## Regression models
###Summary
#### Males
lm_male_summer<-lm(Name ~ Year, data = male_summer)
lm_male_winter<-lm(Name ~ Year, data = male_winter)
#### Females
lm_female_summer<-lm(Name ~ Year, data = female_summer)
lm_female_winter<-lm(Name ~ Year, data = female_winter)

## Reg 4: Age vs Medals by Sport
### While function looping the model throught sports
x=2
sports<-as.data.frame(table(olympics$Sport))[,1]
df <- data.frame(Sport=character(),
                 Rsquared=numeric(),
                 Pvalue=numeric(),
                 stringsAsFactors=FALSE)
while (x<=length(sports)) {
  spe_sport<-sports[x]
  df_spe_sport<-olympics[which(olympics$Sport==spe_sport),]
  try(model<-lm(Age ~ medal_factor, data = df_spe_sport))
  newdf<-data.frame(Sport=spe_sport,
                    Rsquared= summary(model)$r.squared,
                    Pvalue=round(summary(model)$coefficients[8],3))
  df<-rbind(df,newdf)
  x=x+1
}

age_med<-df
age_med<-age_med[age_med$Pvalue<0.05,]

## Reg 5: Height Vs Medal by Sport
### While function looping the model throught sports
x=2
sports<-as.data.frame(table(olympics$Sport))[,1]
df <- data.frame(Sport=character(),
                 Rsquared=numeric(),
                 Pvalue=numeric(),
                 stringsAsFactors=FALSE)
while (x<=length(sports)) {
  spe_sport<-sports[x]
  df_spe_sport<-olympics[which(olympics$Sport==spe_sport),]
  try(model<-lm(Height ~ medal_factor, data = df_spe_sport))
  newdf<-data.frame(Sport=spe_sport,
                    Rsquared= summary(model)$r.squared,
                    Pvalue=round(summary(model)$coefficients[8],3))
  df<-rbind(df,newdf)
  x=x+1
}

hei_med<-df
hei_med<-hei_med[hei_med$Pvalue<0.05,]

## Reg 6: Weight Vs Medal by Sport
### While function looping the model throught sports
x=2
sports<-as.data.frame(table(olympics$Sport))[,1]
df <- data.frame(Sport=character(),
                 Rsquared=numeric(),
                 Pvalue=numeric(),
                 stringsAsFactors=FALSE)

while (x<=length(sports)) {
  spe_sport<-sports[x]
  df_spe_sport<-olympics[which(olympics$Sport==spe_sport),]
  try(model<-lm(Weight ~ medal_factor, data = df_spe_sport))
  newdf<-data.frame(Sport=spe_sport,
                    Rsquared= summary(model)$r.squared,
                    Pvalue=round(summary(model)$coefficients[8],3))
  df<-rbind(df,newdf)
  x=x+1
}

wei_med<-df
wei_med<-wei_med[wei_med$Pvalue<0.05,]