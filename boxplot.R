
boxplot(women$height, col='green')
abline(h=quantile(women$height))
text(1+.2, quantile(women$height),labels=c('min', '1Q', 'median', '3Q', 'max'))