#rm(list=ls())

Simulationgame <- c(35.6,36.1,35.6,29.8,39.1)
Casualgame <- c(22,35.7,35.9,25.6,28.2)
Rollgame <- c(18.8,6,4.3,8.2,17.3)
Sportsgame <- c(11.6,2.9,3.2,4.5,10.1)
Adventuregame <- c(5.0,1.4,3.6,2.3,3.7)
Actiongame <- c(2.9,3.2,5.9,3.5,2.2)
Fpsgame <- c(3.1,1.8,1,1.4,3.5)
RTSgame <- c(1.3,0.6,0.9,1,1)
ELSEgame <- c(27.8,31.5,32.5,35.9,25.4)

Gamecharacter <- c("남아","여아","만3~4세","만5~6세","민7~9세")

game.info <- data.frame(Gamecharacter,Simulationgame,
            Casualgame,Rollgame,Sportsgame,Adventuregame,
            Actiongame,Fpsgame,RTSgame,ELSEgame)

#데이터 매트릭스. 성별, 연령별 플레이하는 게임의 비율(%)
game.info

#실습 문제 : 데이터 매트릭스 자료에서 만3~4세가 플레이하는 게임의 비율을 보여
#주고 가장 많은 비율을 차지하는 %와 장르명, 자료에서 몇번째 장르인지를 구하시오.
#또한 구한 데이터 값들을 오름차순으로 정렬하시오.
guessWhat <- c("만3~4세")

guess <- subset(game.info, Gamecharacter == guessWhat)

guess
max(guess[,-1])
which.min(guess[,-1])

guesssort <- as.matrix(guess[,-1])
answer <- sort(guesssort,decreasing = T)
answer

          
