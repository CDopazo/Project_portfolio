par(mfrow=c(2,2),
    oma=c(6,2,6,2),
    mar=c(3,3,1,1))
plot(multi_fit_2,1:4);
title(main="Residuals of the second multi-linear regression",
      outer=T,
      cex.main=2,
      cex.sub=2)