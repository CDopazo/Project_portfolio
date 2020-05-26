#Libraries
library(knitr)
# Data loading:
questions<-read.csv("data/quiz2018_preguntas")
candidates<- read.csv("data/quiz-Examen20182019-standard20180510.csv")

# Data manipulation wrong percentage
good<-complete.cases(questions$Common_Wrong)
commonerror<-questions[good,]
commonerrorfinal<-commonerror[(commonerror$Percent_Common_Wrong>50),]

# Diversity candidates data
schools<-read.csv("data/colegios2.csv", sep="")
states_test<-read.csv("data/estados2.csv", sep=";")
states_test<-states_test[order(-states_test$freq),]
schools<-schools[order(-schools$freq),]
