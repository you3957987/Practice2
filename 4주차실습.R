#rm(list=ls())
GameCompany <- list(
  Area = c('서울','경기','제주','부산','충남','전북','인천'),
  GameMaker = c(607,344,7,44,27,24,17),#게임 제작 및 배급업 사업체수
  ComputerGameCafe = c(1418,2241,156,516,517,368,456),#컴퓨터 게임방 운영업 사업체 수
  ElectronicGameCafe = c(32,179,8,23,44,5,37),#전자 게임방 운영업 사업체 수
  GameCategory = c('RPG','FPS','RTS','RTS','TRPG','FPS','RTS')#지역별 가장 인기있는 게임 장르
)
GameFactor <- factor(GameCompany$GameCategory)
GameFactor
names(GameCompany$GameCategory) <- GameCompany$Area

#문제 1 게임산업 사업체수 현황을 조사한 지역에서 가장 많은 지역의 게임 제작 및 배급업 사업체수를 구하시오
GuessMaxGamemaker <- max(GameCompany$GameMaker)
GuessMaxGamemaker

#문제 2 게임산업 사업체수 현황을 조사한 지역에서 가장 적은 컴퓨터 게임방 운영업 사업체수를 구하시오
GuessMinComputerGameCafe <- min(GameCompany$ComputerGameCafe)
GuessMinComputerGameCafe

#문제 3 각 지역별 전자 게임방 운영업 사업체 수 중 n 미만인 지역을 몇개인가? n 은 자의적으로 입력
guessN <- 50
GuessElectronicGameCafe <- length(GameCompany$ElectronicGameCafe[GameCompany$ElectronicGameCafe<guessN])
GuessElectronicGameCafe

#문제 4 게임 장르 이름을 입력하였을 때 입력한 게임 장르가 가장 인기있는 지역을 구하시오.
GuessArea <- 'RPG'
GameCompany$GameCategory[GameCompany$GameCategory == GuessArea ]

# 문제 5 지역별 가장 인기있는 게임의 장르 총 개수를 구하시오
nlevels(GameFactor)

