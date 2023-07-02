# 1. CSV 파일 불러오기
install.packages("tidyverse")
library(tidyverse)
covid <- read_csv("COVID-19 Coronavirus.csv")
covid_data <- covid[,6:7]

# 2. 군집 수 선정 (Ward 연결법 - 최소분산연결법 사용)
install.packages("NbClust")
library(NbClust)
nc <- NbClust(covid_data, distance='euclidean', method='ward.D2')

# 3. K-means 군집분석을 사용
set.seed(12045)
install.packages("cluster")
library(cluster)
km <- kmeans(covid_data, center=4, nstart=1000)
km

# 4. Cluster plot 그리기
clusplot(x = covid_data, clus = km$cluster, lines = 0, shade = TRUE, color = TRUE, labels = 2,
         main = "Status of national Covid-19 Outbreak and Death", xlab = "Total Cases (1M pop)", ylab = "Total Deaths (1M pop)")
covid$Cluster <- km$cluster

# 4. 군집별 데이터 결과
cluster1 <- subset(covid$Country, covid$Cluster==1)
cluster1
cluster2 <- subset(covid$Country, covid$Cluster==2)
cluster2
cluster3 <- subset(covid$Country, covid$Cluster==3)
cluster3
cluster4 <- subset(covid$Country, covid$Cluster==4)
cluster4

