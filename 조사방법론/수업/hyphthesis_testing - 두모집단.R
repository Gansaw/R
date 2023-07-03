## {r : 된장 1}
n <- 20; xdbar <- 2.55; sigmad <- 3.13
t0 <- xdbar/(sigmad/sqrt(n))
pt(t0, df=n-1, lower.tail=F)


## {r : 된장2}
before <- c(82, 54, 74, 75, 71, 76, 70, 62, 77, 75, 72, 83, 78, 74, 68, 76, 75, 75, 75, 71)
after <- c(75, 50, 74, 71, 69, 73, 68, 62, 68, 72, 70, 77, 71, 74, 67, 73, 77, 71, 76, 74)
t.test(before, after, paired=T, alt="greater")


## {r : 된장3}
diet <- read.csv("https://www.dropbox.com/s/anylurmkgmhqiuk/diet.csv?dl=1", header=F, col.names=c("id", "before", "after"))
t.test(diet$before, diet$after, paired=T, alt="greater")


## {r : 타이어수명1}
tire <- read.csv("https://www.dropbox.com/s/d40dcuescate4nq/tire.csv?dl=1", header=F, col.names=c("id", "span"))
var.test(tire[tire$id==1,2], tire[tire$id==2,2])


## {r : 타이어수명2} 
t.test(tire[tire$id==1,2], tire[tire$id==2,2], var.equal=T)

