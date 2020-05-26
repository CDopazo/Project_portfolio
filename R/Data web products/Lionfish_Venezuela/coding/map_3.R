vranew$prof <- paste("Profundidad", variables$profundidad, sep=": ")

m2=gvisMap(vranew, "loc", "prof", 
           options = list(mapType='terrain', 
                          enableScrollWheel=F, 
                          useMapTypeControl=TRUE))

print(m2,'chart')
