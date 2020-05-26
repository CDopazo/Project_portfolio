# Loading data
data(mtcars)

# Changing the class variables to match their real condition (i.e factor, numerical) 

mtcars$cyl <- factor(mtcars$cyl)
mtcars$vs <- factor(mtcars$vs)
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)
mtcars$am <- factor(mtcars$am,labels=c('Automatic','Manual'))
auto <- subset(mtcars, am=="Automatic")
man <- subset(mtcars, am=="Manual")

# T.test for MPG, Automatic vs Manual transmision

transmision_mpg <- mtcars[,c("mpg","am")]

H_mpg <- t.test(mpg ~ am,
                data=transmision_mpg,
                paired=FALSE,
                var.equal=FALSE)
# Simple linear regression

## Linear regression mpq vs am.
am_fit<- lm(mpg ~  am, data=mtcars)

## analisis of variance: MPG vs all:
VarAna <- aov(mpg ~ ., data = mtcars)

#Multiple linear regression:
## Regression just for the last analysis of contribution
contribution_fit<-lm(mpg ~ cyl + disp + wt + am, data=mtcars)

## First Multi linear regression using all the variables that seem related to mpg.
multi_fit_1<- lm(mpg ~ cyl + disp + wt, data=mtcars)

## Second multi linear regression with cyl and wt only:

multi_fit_2<- lm(mpg ~ cyl + wt, data=mtcars)

## Aikake information criterion(AIC) and Bayesian Information criterion:

### Simple linear model AIC:
simple_AIC<-AIC(am_fit)
### Simple linear model BIC:
simple_BIC<-BIC(am_fit)

### First multi-linear model AIC:
multi_1_AIC<-AIC(multi_fit_1)
### First multi-linear model BIC:
multi_1_BIC<-BIC(multi_fit_1)

#### Second multi-linear model AIC:
multi_2_AIC<-AIC(multi_fit_2)
#### Second multi-linear model BIC:
multi_2_BIC<-BIC(multi_fit_2)
