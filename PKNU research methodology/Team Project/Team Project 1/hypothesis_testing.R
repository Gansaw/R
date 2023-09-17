install.packages("tidyverse")
library(tidyverse)

# 1. CSV 파일 불러오기
ph_stf <- read_csv("phone_satisfaction.csv")

# 2. Apple 휴대폰 만족도
app_stf <- ph_stf[ph_stf$Manufacturer=='Apple',2]

# 3. Samsung 휴대폰 만족도
sams_stf <- ph_stf[ph_stf$Manufacturer=='Samsung',2]

# 4. 가설검정 실시

# 분산동질성 검증
var.test(app_stf,sams_stf)
# 검정결과에 따른 T-test 실시1
t.test(app_stf,sams_stf,alt="greater", var.equal=T)
