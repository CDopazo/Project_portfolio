library(rworldmap)
newmap <- getMap(resolution = "low")
plot(newmap,
     xlim = c((minlong-1),
              (maxlong+1)),
     ylim = c((minlat-1),
              (maxlat+1)))

points(variables$longitud,
       variables$latitud,
       col = "red",
       cex = 1)