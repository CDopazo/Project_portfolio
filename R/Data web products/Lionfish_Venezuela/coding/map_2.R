require(googleVis)

op <- options(gvis.plot.tag='chart')
variables$loc <- paste(variables$latitud, variables$longitud, sep = ":")
vranew <- variables[c("loc", "profundidad", "cantidad")]
m1=gvisGeoChart(vranew, "loc", "cantidad", colorvar = "profundidad", 
                options=list(region="VE", 
                             displayMode="Markers",
                             colorAxis="{colors:['purple', 'red','orange', 'grey', 'black']}",
                             backgroundColor="lightblue"), chartid="EQ"
)

print(m1,'chart')