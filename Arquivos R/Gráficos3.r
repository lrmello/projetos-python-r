´´´{r}
set.seed(123)

x = rnorm(1000)

´´´{r}
qqnorm(x)

qqline(x)

´´´{r}
shapiro.test(x)

´´´{r}
hist(x,main="")
par(new = TRUE)
plot(density(x),ylab = "",xlab = "", axes=F,lwd=2.5)

´´´{r}
library(semTools)
m = mvrnonnorm(1000,c(1,2), matrix(c(10,2,2,5),2,2),skewness = c(5,2),kurtosis = c(3,3))

qqnorm(m)
qqline(m)


´´´{r}
shapiro.test(m)

´´´{r}
hist(x,main="")
par(new = TRUE)
plot(density(x),ylab = "",xlab = "", axes=F,lwd=2.5)