par(mfrow = c(1, 3))

boxplot(variables$profundidad,
        ylab= "Profundidad",
        col="grey")

boxplot(variables$longitud,
        ylab= "Longitud",
        col= "blue")

boxplot(variables$latitud,
        ylab= "Latitud",
        col="salmon")