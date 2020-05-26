#loading data

source("data_loading.R")

# HTML googlevis creator

library(googleVis)
test_heatmap <- gvisGeoChart(states_test,"code", "freq",
                             options=list(region="VE", 
                                          displayMode="regions", 
                                          resolution="provinces",
                                          colorAxis="{colors:['grey', 'red']}",
                                          width=600, height=400))

Table <- gvisTable(states_test, options=list(height=300, width=200))
g<-gvisMerge(test_heatmap, Table, horizontal=TRUE)
print(g, file='test2018.html')