## n-grams data loading
library(utils)
uni_terms <- read.csv("uni_terms.csv", sep="",header=TRUE)
bi_terms <- read.csv("bi_terms.csv", sep="",header=TRUE)
tri_terms <- read.csv("tri_terms.csv", sep="",header=TRUE)
tet_terms <- read.csv("tet_terms.csv", sep="",header=TRUE)

# Next Word Function
nextword<-function(input){
  
  ##N-GRAMS FUNCTIONS TO BE CALLED
  
  ### Uni-gram function:
  Unigram<-function(){
    outputs <- as.data.frame(uni_terms[order(-uni_terms$prob),])
    outputs[1:5,]
  }
  
  ### Bi-gram function:
  Bigram<-function(input){
    inputlength<-sapply(strsplit(input, " "), length)
    input<-sapply(strsplit(as.character(input), " ", fixed = TRUE), '[[', inputlength)
    outputs <- data.frame(bi_terms[(bi_terms$word_1)==input,c('word_2','prob')])
    outputs<- outputs[order(-outputs$prob),]
    #### Back-off to Uni-gram:
    if (nrow(outputs)== 0) {
      return(Unigram())}
    else {outputs[1:5,]}
  }
  
  ### Tri-gram function:
  Trigram<-function(input){
    inputlength<-sapply(strsplit(input, " "), length)
    input<- paste(
      sapply(strsplit(as.character(input), " ", fixed = TRUE), '[[', inputlength-1),
      sapply(strsplit(as.character(input), " ", fixed = TRUE), tail, 1), 
      sep= " ")
    outputs <- data.frame(tri_terms[(tri_terms$pair_1)==input,c('word_3','prob')])
    outputs <- outputs[order(-outputs$prob),]

    #### Back-off to Bi-gram:
    if (nrow(outputs)== 0)  {
      return(Bigram(input))}
    else {outputs[1:5,]}
  }
  
  ### Tetra-gram function:
  Tetragram<-function(input) {
    input<- paste(
      sapply(strsplit(as.character(input), " ", fixed = TRUE), '[[', inputlength-2),
      sapply(strsplit(as.character(input), " ", fixed = TRUE), '[[', inputlength-1),
      sapply(strsplit(as.character(input), " ", fixed = TRUE), tail, 1), 
      sep= " ")
    outputs <- data.frame(tet_terms[(tet_terms$trio_1)==input,c('word_4','prob')])
    outputs <- outputs[order(-outputs$prob),]

    #### Back-off to Tri-gram:
    if (nrow(outputs)== 0) {
      return(Trigram(input))}
    else{outputs[1:5,]}
  }
  
  ## NEXT WORD PREDICTOR FUNCTION:
  
  ### Input cleaning 
  ## Starting output, no input case:
  input<-tolower(input)
  input<-gsub("'", "", input)
  input<-gsub('[[:punct:] ]+',' ',input)
  inputlength<-sapply(strsplit(input, " "), length)
  input<- as.character(input)
  

  ## Searching in Bi-gram (using last term, input = 1) 
    if (inputlength == 1) {return(Bigram(input))}
  ## Searching in Tri-gram (Using the last two terms, input = 2)
    if (inputlength == 2) {return(Trigram(input))}
  ## Searching in Tetra-gram (Using the last 3 terms, input = 3 or more)
    if (inputlength >= 3) {return(Tetragram(input))}
  ## No Input
    if (input=="") {
      outputs<-data.frame(word = c("i","the","in","im","we"),prob=c("5.9","4.8","	1.1","1.0","0.8"))
      outputs<-outputs[order(-outputs$prob),]
      outputs
      }
}