#decision trees
library(ISLR)
data(Carseats)
head(Carseats)
names(Carseats)
?Carseats
data = Carseats

#Libraries for Decision Tree
library(rpart)
library(rpart.plot)

#Model
decisiontree = rpart(Sales ~ . , data=data, method='anova' )####sales~. -short form, instead typing all names put.
decisiontree
rpart.plot(decisiontree)
##it predicts best splitting of data - most important variable
#this is large tree, so prune it: check cp
printcp(decisiontree)
prunetree = prune(decisiontree, cp=0.05)
prunetree ##stars implies leaf nodes
rpart.plot(prunetree, nn=T) ##node numbers

#improve the plot
rpart.plot(prunetree, nn=T, cex=.8, type=4)

library(dplyr)
testdata = sample_n(data,2)
predict(prunetree, ndata = testdata, type='vector')
