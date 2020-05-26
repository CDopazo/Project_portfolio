library(relaimpo)

boot <- boot.relimp(contribution_fit,
                    b = 500,
                    type = c("lmg"),
                    rank = TRUE,
                    diff = TRUE,
                    rela = TRUE)

plot(booteval.relimp(boot,sort=TRUE),
     main="Relative importance of the variables to Miles per Galon(mpg)")  