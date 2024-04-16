#rm(list=ls())
getwd()
setwd('C:/RWorks')
getwd()

guessPriceF <- function(guessPriceA,guessPriceB){
  guessPriceA <- as.numeric(guessPriceA)
  guessPriceB <- as.numeric(guessPriceB)
  answerPriceB <- subset(diamondtable, price > guessPriceA )
  answerPriceA <- subset(answerPriceB, price < guessPriceB )
  print(answerPriceA)
}

guessCutF <- function(guessCut){
  guesscut <- as.character(guessCut)
  answerCut <- subset(diamondtable, cut == guesscut)
  print(answerCut)
}

guessAnswerF <- function(guessPriceA,guessPriceB,guessCut){
  
  guessPriceA <- as.numeric(guessPriceA)
  guessPriceB <- as.numeric(guessPriceB)
  answerPriceBB <- subset(diamondtable, price > guessPriceA )
  answerPriceAA <- subset(answerPriceBB, price < guessPriceB )
  guesscut <- as.character(guessCut)
  lastData <- subset(answerPriceAA, cut == guesscut )
  print(lastData)

}






findDataColName <- function(data,colname){
  data <- c(data[,colname])
  return(data)
}

findDataColNum <- function(data,colnum){
  data <- c(data[,colnum])
  return(data)
}

findDataRowName <- function(data,rowname){
  data <- c(data[rowname,])
  return(data)
}

findDataRowNum <- function(data,rownum){
  rowName <- as.integer(rownum)
  data <- c(data[rowName,])
  return(data)
}