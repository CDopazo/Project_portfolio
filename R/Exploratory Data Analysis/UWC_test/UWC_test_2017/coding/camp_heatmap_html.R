#loading data

source("data_loading.R")

# HTML googlevis creator

library(googleVis)
camp_heatmap <- gvisGeoChart(states_camp,"code", "freq",
                             options=list(region="VE", 
                                          displayMode="regions", 
                                          resolution="provinces",
                                          colorAxis="{colors:['grey', 'red']}",
                                          width=600, height=400))

Table <- gvisTable(states_camp, options=list(height=300, width=200))
g<-gvisMerge(camp_heatmap, Table, horizontal=TRUE)
print(g, file='camp2017.html')