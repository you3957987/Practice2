# 통계청에서 주어진 게임 산업 : 학력별 종사자 현황 표를 보고 가로 막대그래프, 세로 막대래프, 파이차트 총
# 3개의 그래프를 만드시오. 이떄, 파이차트에는 학력별 종사자의 %가 나타나도록 만드시오. 
library(svDialogs)
pc<-c(13124,680,2425,9410,609)
mobile<-c(29015,1012,4369,22199,1435)
consol<-c(1204,14,183,961,46)
arcade<-c(1919,103,444,1336,36)
ds<-rbind(pc,mobile,consol,arcade)

colnames(ds)<-c('총합','고졸이하','초대졸',
                '대졸','대학원졸 이상')
guessnum <- -1
while(guessnum != 4 ){
  guessnum <- dlgInput("1 : 막대그래프로 보기(가로)
                        2 : 막대그래프로 보기(세로)
                        3 : 파이차트로 보기
                        4 : 종료  ")$res
  
  if(guessnum == 1){
    barplot(ds, main='게임산업:학력별 종사자 현황',
            col=c('green','blue','yellow','red'),
            beside= TRUE,
            legend.text=T,
            xlab='종사자 수',
            ylab='학렬별',
            horiz = TRUE)
   
  }else if(guessnum == 2){
    barplot(ds, main='게임산업:학력별 종사자 현황',
            col=c('green','blue','yellow','red'),
            beside= TRUE,
            legend.text=T,
            xlab='학렬별',
            ylab='종사자 수',
            horiz = FALSE,
            args.legend = list(x='topright', bty='o',inset=c(0.6,0.3))
            )
   
  }else if(guessnum == 3){
    total <- rowSums(rbind(pc, mobile, consol, arcade))
    labels <- c('고졸이하', '초대졸', '대졸',
                '대학원졸 이상')
    percentages <- round((total / sum(total)) * 100, 1)
    pie(total, labels = paste(labels, "(", percentages, "%)"), 
        col = c('green', 'blue', 'yellow', 'red'),
        main = '게임 산업: 학력별 종사자 현황')
    
  }else if(guessnum == 4){
    cat("프로그램을 종료합니다")
  }
  else{
    cat("숫자를 잘못 입력하셨습니다.")
  }
}