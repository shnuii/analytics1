#clustering

 
marks1 = c(3,1,4,5,9,2,6)
length(marks1)
plot(marks1)
k1=kmeans(marks1, centers=2)
k1
cbind(marks1, k1$cluster)
