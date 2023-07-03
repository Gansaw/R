# 모분산에 대한 가설검정

## {r : 화랑담배의 니코틴 함량}
x <- c(11.5, 9.9, 12.3, 11.2, 13.8, 12.3, 11.9, 12.3, 12.9, 15.6, 13.2, 11.9, 12.8, 13.8, 11.5, 12.4, 12.3, 12.3, 10.5, 12.3, 12.7, 12.8, 13.2, 14.9, 9.8, 12.3, 14.2, 11.9, 14.2, 13.6)
n <- length(x); s <- sd(x); sigma0 <- sqrt(1.2)
chisq <- (n-1)*s^2/sigma0^2

chisq ; 2*(1-pchisq(chisq, df=n-1))


## {r : 수학과 영어 성적}
score <- read.csv("https://www.dropbox.com/s/o8m92fqjhbudrb7/score.csv?dl=1", header=F, col.names=c("math", "eng"))
var.test(score$math, score$eng)