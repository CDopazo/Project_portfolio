best <- function(state,out) {
  ## Read outcome data
  outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
  data<- read.csv("data/hospital-data.csv", colClasses = "character")
  validout<-c("heart attack","heart failure","pneumonia")
  ## Check that state and outcome are valid
  if (any(validout==out) == FALSE) { 
    stop(" invalid outcome")}
    else if (any(outcome$State[]==state) == FALSE) {
    stop(" invalid state")}
  ## Return hospital name in that state with lowest 30-day death  
    else if (out=="heart attack") {
      outcome1<-outcome[outcome$State==state,]
      outcome1$Hospital.Name[which.min(outcome1$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)]}
    else if (out=="heart failure") {
      outcome1<-outcome[outcome$State==state,]
      outcome1$Hospital.Name[which.min(outcome1$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)]}
    else  {
      outcome1<-outcome[outcome$State==state,]
      outcome1$Hospital.Name[which.min(outcome1$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)]}
}