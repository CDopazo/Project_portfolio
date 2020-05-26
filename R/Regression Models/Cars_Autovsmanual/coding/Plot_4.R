#Libraries
library(ggplot2)
library(GGally)

#Plotting
cars_subset=mtcars[,c("mpg","cyl","disp","hp","wt","am")]
g<-ggpairs(cars_subset,
        mapping=ggplot2::aes(colour = am),
        lower = list(continuous="smooth",
                     theme_set(theme_bw())),
                     title="1974 Motor Trend US magazine cars parameters")
print(g)