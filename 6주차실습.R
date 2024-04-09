#rm(list=ls())

library(svDialogs)
library(ggplot2)

write.csv(diamonds, 'TestFile.csv')

getwd()
setwd('C:/RWorks')
getwd()

diamondtable <- read.csv('TestFile.csv')

user.input <- dlgInput('원하는 커팅 품질을 입력하시오 : ')$res
answer <- subset(diamondtable, cut == user.input)
answer

user.input <- dlgInput('원하는 가격을 입력하시오 : ')$res
guessmoney <- as.numeric(user.input)
lastanswer <- subset(answer,price == user.input)
lastanswer

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
