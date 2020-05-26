# Venezuela National Parks interactive map
tile<-'https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png'

ven_np_map <- ven_np_df %>%
  leaflet() %>%
  # Add a base layer
  addTiles(tile) %>%
  # add markers
  addAwesomeMarkers(
    # add popup with images and variables as text
    popup = paste(popupImage(np_img, src = c("remote")),"<br>",
                  "National Park: ",paste("<a href=",np_info,">",ven_np_df$name,"</a>"),"<br>"),
    label = ven_np_df$name,
    # organise points as clusters
    clusterOptions = markerClusterOptions() ) %>%
  # include minimap
  addMiniMap()

ven_np_map     
