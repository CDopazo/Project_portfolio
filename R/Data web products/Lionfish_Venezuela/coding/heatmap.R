# Load libraries
library(ggmap)
library(ggplot2)
# Coord replicated by sightings
source("replicate_coordenates.R")

# Load data
positions <- data.frame(lon=repcoord$longitud,
                        lat=repcoord$latitud)
# Load blank map from google maps
map <- get_map(location=c(minlong,minlat,maxlong,12.1), color='bw')

# Heatmap
g<-ggmap(map, extent = "device") +
geom_density2d(data = positions,
               aes(x = lon, y = lat),
               size = 0.3) +
stat_density2d(data = positions,
               aes(x = lon,
                   y = lat,
                   fill = ..level..,
                   alpha = ..level..),
               size = 0.01,
               bins = 16,
               geom = "polygon") + 
scale_fill_gradient(low = "green",
                    high = "red") +
scale_alpha(range = c(0, 0.3),
            guide = FALSE)
print(g)