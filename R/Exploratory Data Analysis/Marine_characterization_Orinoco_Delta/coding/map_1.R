library(rworldmap)
newmap <- getMap(resolution = "low")
plot(newmap,
     xlim = c((minlong-1),
              (maxlong+1)),
     ylim = c((minlat-1),
              (maxlat+1)))

points(OBISdata_04_2018$decimalLongitude,
       OBISdata_04_2018$decimalLatitude,
       col = "red",
       cex = .6)