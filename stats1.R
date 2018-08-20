x = ceiling(rnorm(10000, mean=60, sd=20))
mean(x)
median(x)
table(x)
sort(table(x), decreasing =T)

library(modeest)
mlv(x, method='shorth')

quantile(x)
quantile(x, seq(.01,1,by=0.01)) #percentile
quantile(x, seq(0.1,1, by=0.1))

library(e1071)
plot(density(x))
e1071::skewness(x)
kurtosis(x)

sd(x) ; var(x) ###executes both commands in a single line
cov(women$weight, women$height)
cor(women$weight, women$height)

stem(x)
