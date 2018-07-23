# 신한은행 금융데이터셋 로딩 및 기술통계량확인
sbdata <- read.csv(data.csv, header = T)
head(sbdata)
summary(sbdata)
library(hmisc)
describe(sbdata)

# 고객기본정보 빈도분석 및 교차분석
table(sbdata$SEX_GBN)
library(gmodels)
table(sbdata$ADD_GBN, sbdata$INCOME_GBN)
CrossTable(sbdata$ADD_GBN, sbdata$INCOME_GBN)

# 금융거래정보 분포형태 파악
boxplot(sbdata, range = 0, notch = T)
hist(sbdata$TOT_ASSET)
plot(sbdata$TOT_ASSET)
hist(sbdata$TOT_ASSET, freq = F)
lines(density(sbdata$TOT_ASSET), col='blue')
x <- seq(0, , 0.1)
curve( dnorm(x, mean(sbdata$TOT_ASSET), sd(sbdata$TOT_ASSET), col='red', add=T) )







