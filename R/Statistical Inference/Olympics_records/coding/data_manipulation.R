#loading libraries:
library(dplyr)
library(ggplot2)
library(muStat)
library(magrittr)
#loading data
olympics <- read.csv("data/olympics.csv", sep="")
mult_sport <- read.csv("data/mult_sport.csv", sep="")

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

#### own ocuntry binomial factor added
olympics$region<-as.character(olympics$region)
olympics$Country<-as.character(olympics$Country)
olympics$own_country <- case_when(
  olympics$Country == olympics$region ~ "same",
  olympics$Country != olympics$region ~ "diff")
# converting to factors
olympics$medal_factor<-as.factor(olympics$medal_factor)
olympics$own_country<-as.factor(olympics$own_country)
#data frame for Hypothesis testing
medal_country<-data.frame(own_country=olympics$own_country,medal=olympics$medal_factor)

# Hypothesis Testing
## Own Country hipothesis:
###Hypothesis testing 1:
test_1<-chisq.test(table(medal_country$own_country,medal_country$medal))


## Generalist vs specialist hypothesis:
#### Data preparation
olympics_multsport<-merge(olympics,mult_sport, by="ID")
olympics_singsport<-anti_join(olympics,mult_sport,by="ID")

#### Specialists and generalists in the same df
spe_df<-data.frame(group=factor(rep("spe",266401)),medal=olympics_singsport$medal_factor)
gen_df<-data.frame(group=factor(rep("gen",4366)),medal=olympics_multsport$medal_factor)
spegen_medal<-rbind(spe_df,gen_df)
#### Cleaning
rm(olympics_multsport)
rm(olympics_singsport)
rm(gen_df)
rm(spe_df)
#### Hypothesis testing 2:
test_2<-chisq.test(table(spegen_medal$medal,spegen_medal$group))
