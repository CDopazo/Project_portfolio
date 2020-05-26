# Libraries:
library(readr)
library(knitr)
# writen Test Data:
candidates <- read_csv("data/resultados_pensum_candidatos_examen2017_avemundo.csv")
questions <- read_csv("data/resultados_pensum_por_pregunta_examen2017_avemundo.csv")

SUBSET1<-questions[1:17,]
SUBSET2<-questions[18:34,]
SUBSET3<-questions[35:51,]
SUBSET4<-questions[52:68,]
SUBSET5<-questions[69:85,]

datos1<-(SUBSET1$Percentaje_equivocado)
datos2<-(SUBSET2$Percentaje_equivocado)
datos3<-(SUBSET3$Percentaje_equivocado)
datos4<-(SUBSET4$Percentaje_equivocado)
datos5<-(SUBSET5$Percentaje_equivocado)

good<-complete.cases(questions$Error_Comun)
comonwrong<-questions[good,]
comonwrongfinal<-comonwrong[(comonwrong$Percentaje_equivocado>50),]

# Diversity analysis and camp data:

applicants<-read_csv("data/Applicants_2017-2018_Anonimo.csv")
states_test<-read.csv("data/estados1.csv", sep=";")
states_test<-states_test[order(-states_test$freq),]
states_camp<-read.csv("data/estadosconvi1.csv", sep=";")
states_camp<-states_camp[order(-states_test$freq),]
states_camp<-states_camp[1:5,]

payment<-table(applicants[,10])
payment<-as.data.frame(payment)
private<-rbind(payment[payment$Var1=="Privada",],payment[payment$Var1=="Private",])
private<-data.frame(type="Private",freq=sum(private$Freq))

public<-rbind(payment[payment$Var1=="Pública",],payment[payment$Var1=="Public",])
public<-data.frame(type="Public",freq=sum(public$Freq))
                   
semiprivate<-rbind(payment[payment$Var1=="SemiPrivada",],payment[payment$Var1=="SemiPrivate",])
semiprivate<-data.frame(type="Semiprivate",freq=sum(semiprivate$Freq))

payment<-rbind(private,public,semiprivate)
payment<-payment[order(-payment$freq),]
