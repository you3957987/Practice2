#rm(list=ls())
#ggplot2에 있는 diamonds라는 데이터를 보고 가격이 2870에서 2880인 다이아몬드와
#커팅 품질이 Good인 다이아몬드를 찾아내고, Answer.txt파일에 저장한 뒤 출력하시오.
#작업 위치는 C:/RWorks 이며 필요한 함수는 FunctionSet.R에 저장되어 있습니다.
library(svDialogs)
library(ggplot2)
source('FunctionSet.R')
getwd()
setwd('C:/RWorks')
getwd()

write.csv(diamonds, 'TestFile.csv')
diamondtable <- read.csv('TestFile.csv')
guessnum <- -1
while(guessnum != 5 ){
  guessnum <- dlgInput("1 : 가격 검색 
                        2 : 커팅 품질 검색 
                        3 : 조건에 맞는 다이아몬드 출력 
                        4 : txt파일 생성 및 확인하기
                        5 : 종료하기")$res
  
  if(guessnum == 1){
    guessPriceA <- dlgInput("최소 가격을 입력하세요")$res
    guessPriceB <- dlgInput("최대 가격을 입력하세요")$res
    pricetavle <- guessPriceF(guessPriceA,guessPriceB)
    print(pricetavle)
    
  }else if(guessnum == 2){
    guessCut <- dlgInput("커팅 품질을 입력하세요")$res
    cuttable <- guessCutF(guessCut)
    print(cuttable)
    
  }else if(guessnum == 3){
    answertable <- guessAnswerF(guessPriceA,guessPriceB,guessCut)
    print(answertable)
    
  }else if(guessnum == 4){
    
    rownum <- nrow(answertable)
    file.create("Answer.txt")
    sink('Answer.txt',append = T)
    for( i in 1:rownum){
      cat(i,' : ',answertable[i,1], ' ',answertable[i,3] ,answertable[i,8],'\n')
    }
    sink()
    answer <- read.table('Answer.txt')
    print(answer)
    
  }else if(guessnum == 5){
    cat("프로그램을 종료합니다")
  }
  else{
    cat("숫자를 잘못 입력하셨습니다.")
  }
}

