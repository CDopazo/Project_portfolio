coord <- variables[,c("latitud","longitud","cantidad")]
library(ggplot2)
coord <- remove_missing(coord)


lon <- data.frame()
# Longitud
x=1
  for (i in coord$longitud) {
    times <- coord$cantidad[x]
    repeat{
      lon <- as.data.frame(rbind(lon,i))
      times <- times - 1
      if (times==0) {break}
    }
    x=x+1
    }

rm(i)
rm(times)
rm(x)


lat <- data.frame()
# Latitud
x=1
for (i in coord[,"latitud"]) {
  times <- coord[,"cantidad"][x]
  repeat{
    lat <- as.data.frame(rbind(lat,i))
    times <- times - 1
    if (times==0) {break}
  }
  x=x+1
}

repcoord<-cbind(lon,lat)
names(repcoord)<-(c("longitud","latitud"))