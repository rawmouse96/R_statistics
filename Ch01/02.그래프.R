# 산점도
head(cars)
plot(cars$speed, cars$dist, 
     main='속도와 제동거리',
     xlab='속도(mph)', ylab='제동거리(ft)', pch=1, col='red')

# 선 그래프
tail(Nile)
plot(Nile, main="나일강의 연도별 유량 변화", xlab='연도', ylab='유량', col='navy')

library('ggplot2')
df = as.data.frame(Nile)
head(df)
df$year = 1871:1970
ggplot(df, aes(x=year, y=x)) + geom_line() + ggtitle('나일강의 연도별 유량변화') +
    xlab('연도') + ylab('유량') + theme(plot.title = element_text(hjust = 0.5, size=20, face='bold'))
