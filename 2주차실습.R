Month <- c(3:12)
SeoulStartUpCompany <- c(22110, 18695,20141, 19873, 19582, 19352, 17014, 18384, 18940, 15764)
BusanStartUpCompany <- c(6641,5688,5897,5796,5809,5587,5009,5441,5561,4844)
GyeonggiStartUpCompany <- c(34890,30149,31977,32264,31340,31662,27846,30155,30897,24619)
Information <- paste(Month, "월", sep='')
#Information
SeoulInformationMonth <- paste(Information,SeoulStartUpCompany,sep='=')
BusanInformationMonth <- paste(Information,BusanStartUpCompany,sep='=')
GyeonggiInformationMonth <- paste(Information,GyeonggiStartUpCompany,sep='=')

#SeoulInformationMonth
#BusanInformationMonth
#GyeonggiInformationMonth

cat("서울의 창업기업수 =", SeoulInformationMonth, "\n부산의 창업기업수 = ", BusanInformationMonth, "\n경기의 창업기업수 = " ,GyeonggiInformationMonth )

names(SeoulStartUpCompany) <- Month
names(BusanStartUpCompany) <- Month
names(GyeonggiStartUpCompany) <- Month

#SeoulStartUpCompany
#BusanStartUpCompany
#GyeonggiStartUpCompany

guessMonthAverage<-12-2

cat( guessMonthAverage+2,"월달의 평균 창업기업수는",sum(SeoulStartUpCompany[guessMonthAverage],BusanStartUpCompany[guessMonthAverage],GyeonggiStartUpCompany[guessMonthAverage])%/% 3)

cat ( sum(SeoulStartUpCompany[1:10])%/% 10 )
cat ( sum(BusanStartUpCompany[1:10])%/%10 )
cat ( sum(GyeonggiStartUpCompany[1:10])%/%10)

guessMonthValue <- 4-2 

cat( "각 도시의", guessMonthValue+2,"월달의 창업기업수는\n서울 = ",SeoulStartUpCompany[guessMonthValue] ,"\n부산 = ", BusanStartUpCompany[guessMonthValue],"\n경기 = ", GyeonggiStartUpCompany[guessMonthValue] )




