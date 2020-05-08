rankall<-function(outcome,num="best"){
  data <- read.csv("outcome-of-care-measures.csv",colClasses="character",na.strings="Not Available")
  
  ## Check that outcome is valid
  if(outcome %in% c("heart attack", "heart failure", "pneumonia") == FALSE) {stop("invalid outcome")}
  ## Creating some labels
  he = data.frame(NN=c(11,17,23), OO=c("heart attack", "heart failure", "pneumonia"))
  
  y = subset(he,he$OO == outcome)[,1]
  
  frame = data.frame(hospital=1,state=1)
  
  # Core function subset and order
  for(i in 1:length(levels(factor(data$State)))){
    state=levels(factor(data$State))[i]
    
    dataofstate <- subset(data,data[,7] == state & is.na(data[,y]) == FALSE)
    dataofstate_order1 <- dataofstate[c(order(dataofstate[,2])),]
    dataofstate_order2 <- dataofstate_order1[c(order(as.numeric(dataofstate_order1[,y]))),]
    dataofstate_order2$Rank <- c(1:nrow(dataofstate))
    
    #setting special labels for the num
    if(num == "worst") {NUM <- nrow(dataofstate)}
    else{NUM = num}
    
    if(num == "best") {NUM <- 1}
    
    if(NUM > nrow(dataofstate)){hos = NA}
    else{
      data_rank <- subset(dataofstate_order2,dataofstate_order2$Rank == NUM)
      hos = data_rank[,2]
    }
    
    plus=c(hos,state)
    frame=rbind(frame,plus)
  }
  frame[-1,]
}