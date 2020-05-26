par(mfrow = c(1, 3))

reg1 <- lm(variables$profundidad~variables$fecha_avistamiento)
plot(variables$fecha_avistamiento,
     variables$profundidad,
     type = "p",
     col="grey",
     xlab= "Sighting date", 
     ylab="Depth(m)")
abline(reg1,
       col="black",
       lwd=2)

reg2<-lm(variables$longitud~variables$fecha_avistamiento)
plot(variables$fecha_avistamiento,
     variables$longitud,
     type = "p",
     col="blue",
     ylab= "Longitude",
     xlab="Sighting date")
abline(reg2,
       col="black",
       lwd=2)

reg3<- lm(variables$latitud~variables$fecha_avistamiento)
plot(variables$fecha_avistamiento,
     variables$latitud, 
     type = "p",
     col="red",
     xlab= "Sighting date",
     ylab="Latitude")
abline(reg3,
       col="black",
       lwd=2)
