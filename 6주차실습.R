#rm(list=ls())
#문제 : ggplot2패키지에 존재하는 diamonds 데이터를 C:/RWorks 에 TextFile.csv로 
#저장한 뒤 diamondtable 이라는 새로운 이름으로 가져오시오. 그 다음
#데이터를 보고 컷팅 품질이 Good, 가격이 2872인 다이아의 이름(번호)를 입력하여
#Answer.txt에 저장한 뒤 출력하시오
library(svDialogs)
library(ggplot2)

getwd()
setwd('C:/RWorks')
getwd()

write.csv(diamonds, 'TestFile.csv')
diamondtable <- read.csv('TestFile.csv')

print(diamondtable)
user.input <- dlgInput('원하는 커팅 품질을 입력하시오 : ')$res
answer <- subset(diamondtable, cut == user.input)
print(answer)

user.input <- dlgInput('원하는 가격을 입력하시오 : ')$res
guessmoney <- as.numeric(user.input)
lastanswer <- subset(answer,price == user.input)
print(lastanswer)

file.create("Answer.txt")
sink('Answer.txt',append = T)

user.input <- dlgInput('?')$res
cat(user.input)
cat('\n')
user.input <- dlgInput('?')$res
cat(user.input)
cat('\n')
user.input <- dlgInput('?')$res
cat(user.input)
cat('\n')
sink()
read.csv('Answer.txt')
