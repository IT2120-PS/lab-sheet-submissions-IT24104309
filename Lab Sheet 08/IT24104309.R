setwd("C:\\Users\\IT24104309\\Desktop\\IT24104309")
data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

# question 01
popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

print(popmn)
print(popsd)

# question 02
samples <- c()
n <- c()

for(i in 1:25){
  s<- sample(Weight.kg., 6, replace=TRUE)
  samples<- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples)=n

s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)

# question 03
samplemean <- mean(s.means)
samplesd <- sd(s.means)

popmn
samplemean

# popmn = 2.468 and samplemean = 2.462867
# the population mean is approximately equal to sample mean

truesd = popsd/6
truesd
samplesd

# truesd = 0.04268449 and samplesd = 0.1035051
# the true standard deviation is different from sample standard deviation
# because the sample size is too small
