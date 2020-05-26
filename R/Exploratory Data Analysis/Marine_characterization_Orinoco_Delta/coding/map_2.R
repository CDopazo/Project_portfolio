zona1map<-getMap(resolution = "low")
plot(zona1map,
     xlim = c((minlongz1-1),
              (maxlongz1-1)),
     ylim = c((minlatz1-1),
              (maxlatz1+1)))

points(OBISdata_zona1$decimalLongitude,
       OBISdata_zona1$decimalLatitude,
       col = "red",
       cex = .7)