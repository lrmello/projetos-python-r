
´´´{r}
amostra = sample(c(0,1),150,replace = TRUE, prob = c(0.5,0.5))
amostra
summary(as.factor(amostra))

´´´{r}
amostra = sample(c(0,1),150,replace = TRUE, prob = c(0.7,0.3))
amostra
summary(as.factor(amostra))

´´´{r}
amostra = sample(c(1:1000),150,replace = FALSE)
amostra

´´´{r}
amostra = sample(c(0,1),150,replace = TRUE, prob = c(0.7,0.3))
summary(as.factor(amostra))

´´´{r}
amostrairis = iris[amostra == 1,]
amostrairis
dim(amostrairis)

´´´{r}
set.seed(2345)
sample(c(1000),1)

´´´{r}
set.seed(2345)
sample(c(1000),1)

