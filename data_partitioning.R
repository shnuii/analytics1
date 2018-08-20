#partitioning the data into train and test set
mtcars
library(caret)
#index=createDataPartition(y=mtcars$am,p=0.7,list=F)
index= sample(x=1:nrow(mtcars), size= 0.7*nrow(mtcars))
train=mtcars[index,]
test=mtcars[-index,]
nrow(train)
nrow(test)
nrow(train)+nrow(test)

library(olsrr)
fit=lm(mpg~disp+hp+wt+qsec, data=train)
k=ols_step_all_possible(fit) ####removes insignificant variables and regresses again
plot(k)
summary(lm(mpg~wt+hp,data=train))

library(gvlma)
gvmodel=gvlma(fit)
summary(fit)

finalmodel=lm(mpg~wt,data=train)
(predictedvalues=predict(finalmodel, ndata =test))
cbind(test$mpg, predictedvalues)
