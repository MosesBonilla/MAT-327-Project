library(readr)
AQUACULL <- read_csv("Project/AQUASTAT polished culled.csv")
View(AQUACULL)
hist(AQUACULL$wcOne)


med19 <- median(AQUACULL$wcOne)
med20 <- median(AQUACULL$wcTwo)
med21 <- median(AQUACULL$wcThree)
mean19 <- mean(AQUACULL$wcOne)
mean20 <- mean(AQUACULL$wcTwo)
mean21 <- mean(AQUACULL$wcThree)
var19 <- var(AQUACULL$wcOne)
var20 <- var(AQUACULL$wcTwo)
var21 <- var(AQUACULL$wcThree)
sd19 <- sd(AQUACULL$wcOne)
sd20 <- sd(AQUACULL$wcTwo)
sd21 <- sd(AQUACULL$wcThree)

plot(AQUACULL$wcOne, AQUACULL$wcThree, xlab="Water from 2019", ylab="water from 2021", main="% of Reclaimed Water used for Agriculture" )
abline(lm(AQUACULL$wcThree~AQUACULL$wcOne, data=AQUACULL), col="red")

# Using wcOne and wcThree, which are years 2019 & 2021

cr13 <- cor(AQUACULL$wcOne, AQUACULL$wcThree)

