# Libraries loading:

library(caret)
library(rpart)
library(rpart.plot)
library(rattle)
library(randomForest)
library(e1071)

# Loading data:

TrainD <- read.csv("data/pml-training.csv",header=TRUE)

## Data manipulation: 

### Data cleaning: removing Na and missing values

#### Removing all the columns variables that had more than 90% NAs or missing values "":
TrainNa <- which(colSums(is.na(TrainD) | TrainD=="")>0.9*dim(TrainD)[1])
TrainDClear <- TrainD[,-TrainNa]

#### Removing labels columns, names and variables not needed for the model:
TrainDClear <- TrainDClear[,-c(1:7)]

### Partitioning data, Test and Training data:
set.seed(123)
partition <- createDataPartition(TrainDClear$classe, p=0.75, list=FALSE)
#### Training set 75% of the data:
Train <- TrainDClear[partition,]
#### Test set 25% of the data:
Test <- TrainDClear[-partition,]

## Model building:

### Decision Tree model:
Treemodel <- rpart(classe ~ ., data=Train, method="class")

#### Predicting/cross-validation:
predict_tree <- predict(Treemodel, Test, type = "class")
summarytree <- confusionMatrix(predict_tree, Test$classe)

### Random forest model
controlForest <- trainControl(method="cv", number=3, verboseIter=FALSE)
Forestmodel <- train(classe ~ ., data=Train, method="rf", trControl=controlForest)

#### Predicting/cross-validation
predict_forest <- predict(Forestmodel, newdata=Test)
summaryforest <- confusionMatrix(predict_forest, Test$classe)
