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
(m1 = matrix(1:24, nrow = 4))
(m2 = matrix(1:24, nrow = 4, byrow = T))
(m2 = matrix(1:24, ncol = 4, byrow = T))
(x = runif(60,60,100)) ###uniform distribution
plot(x)
(x=trunc(runif(60,60,100))) ###truncates to integers
plot(density(x))
(m4 = matrix(x, ncol = 6))
(colSums(m4))
(rowSums(m4))
(rowMeans(m4))
(colMeans(m4))
m4[m4 > 67 & m4 <86]
m4[8:10, c(1,3,5)]

#array----

#data.frame
#roll no, name, gender, course, marks1, marks2
(rollno = 1:60)
(name = paste('student', 1:60, sep = '-')) ###appending-indexes in a vector
name[-c(1:10)] ###removes elements
rev(name) ###prints names in reverse indexes
name[60:1] 
(gender = sample(c('Female', 'Male'),size = 60, replace = T, prob= c(0.6, 0.4)))
(course = sample(c('BBA', 'MBA', 'FPM'),size = 60, replace = T, prob = c(0.4,0.2,0.1)))
(marks1 = ceiling(rnorm(60, mean = 65, sd = 7))) ###ceiling = truncate
(marks2 = ceiling(rnorm(60, mean = 60, sd = 11)))
(grades = sample(c('A','B','C'), size=60, replace = T))
students = data.frame(rollno, name, gender, course, marks1, marks2, grades, stringsAsFactors = F)
class(students)
summary(students)
students[,c('name')]
students[students$gender == 'Male' & students$grades == 'A', c('rollno','name','marks1','marks2')]
students[students$marks1 >70 | students$marks1 <55, c('rollno','name','marks1')]
t2 = table(students$gender)
#######
barplot(table(students$course), col = 1:3, ylim = c(0,50))
text(1:3, table(students$course)+5, table(students$course))

str(students)
nrow(students)
names(students)
dim(students)
head(students)
tail(students)
head(students, n=7)
#average marks scored by each gender in marks1
#######
aggregate(students$marks1, by = list(students$gender), FUN=mean)
aggregate(students$marks2, by = list(students$course), FUN=max)
aggregate(students$marks2, by = list(students$course, students$gender), FUN=mean)

#dplyr------------------------------------------------------
library(dplyr)
students %>% group_by(gender) %>% summarise(mean(marks1))
students %>% group_by(course,gender) %>% summarise(meanmarks1 =mean(marks1), min(marks1), max(marks1)) %>% arrange(meanmarks1)
students %>% arrange(desc(marks1)) %>% filter(gender=='Male') %>% top_n(5)
sample_frac(students, 0.1, replace = FALSE)     
sample_n(students, 5, replace = FALSE)
#####students %>% sample_frac(.1) %>% arrange(course) %>% select_(name, gender)
students %>% sample_n(3)
#####students %>% arrange(course, grades, marks1) %>% select(course, grades, marks1)

students$gender = factor(students$gender)
summary(students$gender)
summary(students$course)
students$course = factor(students$course, ordered=T, levels = c('FPM','MBA','BBA'))
summary(students$course)
students$grades = factor(students$grades, ordered=T, levels = c('C','B','A'))
students$grades
barplot(table(students$grades), col = 1:3)

