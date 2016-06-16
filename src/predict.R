library(rsm)

data <- read.csv("/home/everton.gago/projetos/braskem/data/data.csv", sep="\t", header=FALSE)
x1 <- data$V2
x2 <- data$V3
x3 <- data$V4
x4 <- data$V5
x5 <- data$V6
x6 <- data$V7
x7 <- data$V8
y <- data$V9
summary(rsm(y~SO(x1,x2,x3,x4,x5,x6,x7)))
modelo = rsm(y~SO(x1,x2,x3,x4,x5,x6,x7))
a <- fitted(modelo)
plot(y, a, main="Preditos vs Observados", ylab="Valores Preditos", xlab="Valores Observados", pch=1, lwd=3, cex.lab=1.5, cex.main=1.5)
abline(0,1)
