# Loading data and subsetting the aproved points
pezleon_20140711 <- read.csv("data/pezleon_20140711.csv")
aprobados=subset(pezleon_20140711, aprobado==1)
var<- aprobados[c("fecha_avistamiento","profundidad","latitud","longitud","localidad","cantidad")]

# setting the time as ymd date class
require(lubridate)
variables=var[order((var$fecha_avistamiento), decreasing=FALSE),]
variables$fecha_avistamiento <- ymd(variables$fecha_avistamiento)

# framing the coordenates
maxlong<-max(variables$longitud)
minlong<-min(variables$longitud)
maxlat<-max(variables$latitud)
minlat<-min(variables$latitud)
