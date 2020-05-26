#Data loading:
library(readr)
OBISdata_04_2018 <- read_csv("data/OBISdata_04_2018.csv")

coordenadas_zona_1 <- read_delim("data/coordenadas_zona_1.csv", 
                                 ";", escape_double = FALSE, trim_ws = TRUE)

# maximum Longitude  and latitude for the OBIS data for Venezuelan sea
maxlong<-max(OBISdata_04_2018$decimalLongitude)
minlong<-min(OBISdata_04_2018$decimalLongitude)
maxlat<-max(OBISdata_04_2018$decimalLatitude)
minlat<-min(OBISdata_04_2018$decimalLatitude)
# maximum Longitude  and latitude of the OBIS data for Orinoco Delta region
maxlongz1<-as.numeric(max(coordenadas_zona_1$long))
minlongz1<-as.numeric(min(coordenadas_zona_1$long))
maxlatz1<-as.numeric(max(coordenadas_zona_1$lat))
minlatz1<-as.numeric(min(coordenadas_zona_1$lat))

## Subset Zone 1 : Atlantic Dace - Orinoco Delta

#RANGO X Horizontal: longitude
OBISdata_zona1_long<- OBISdata_04_2018[ which(OBISdata_04_2018$decimalLongitude<(maxlongz1+2) & OBISdata_04_2018$decimalLongitude>(minlongz1-1)),]

#RANGO Y Vertical: longitude + latitude
OBISdata_zona1<- OBISdata_zona1_long[which(OBISdata_zona1_long$decimalLatitude<(maxlatz1+2.5) & OBISdata_zona1_long$decimalLatitude>(minlatz1-0.2)),]

# Zone 1 Phylum Table data

zona1phy<-table(OBISdata_zona1$phylum)
lblsphy <- paste(names(zona1phy), "\n", zona1phy, sep="")

zona1class<-table(OBISdata_zona1$class)
lblsclass <- paste(names(zona1class), "\n", zona1class, sep="")

# Number of Species:
spe_number<-length(table(OBISdata_zona1$scientificName))
# Number of Genera:
gen_number<-length(table(OBISdata_zona1$genus))
# Number of Families
fam_number<-length(table(OBISdata_zona1$family))
# Number of Orders:
ord_number<-length(table(OBISdata_zona1$order))
# Number of Classes:
cla_number<-length(table(OBISdata_zona1$class))
# Number of Phyla:
phy_number<-length(table(OBISdata_zona1$phylum))

taxa_df<-data.frame(taxa=c("Phyla","Classes","Orders","Families","Genera","Species"),
                    number=c(phy_number,cla_number,ord_number,fam_number,gen_number,spe_number))
