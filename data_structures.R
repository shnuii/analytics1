#Data Structures

#vectors----
v1 = 1:100 #create vector from 1 to 100
v2 = c(1,2,3,10,15)
class(v1)
class(v2)
v3 = c('v', 'Shnuii', 'Bhanu')
v3 #print the vector 
class(v3)
v4 = c(TRUE, F, T, F, F)
class(v4)

#summary on vectors
v1mean <- mean(v1)
v1mean
v1median <- median(v1)
v1median
v1sd <- sd(v1)
v1var <- var(v1)
v1sd
v1var
hist(v1)
hist(women$height)
v2[v2>=5]

x = rnorm(60, 60, 10)
x
plot(x)
hist(x)
plot(density(x)) ###cover of histogram
abline(v=60) ###you can draw horizontal also
hist(x, freq = F)
lines(density(x))

hist(x, breaks=10, col=1:10) ###adds color, what does breaks do??
length(x)
sd(x)

?sample ###creates a sample
x1 = LETTERS[5:20]
x1
set.seed(5)
y1 = sample(x1) ###default is random picking till all elements are over ie same size
y1
(y2 = sample(x1, size=7)) ###double bracketts for printing

(gender = sample(c('M', 'F'), size = 60, replace = TRUE, prob = c(0.3, 0.7))) ###can assign probs
t1 = table(gender) ###no of each element in tabular form
prop.table(t1)
pie(t1)
barplot(t1, col=1:2, horiz = T)


#matrix----

#array----

