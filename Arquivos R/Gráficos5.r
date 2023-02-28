
library("sampling")

Proporção
´´´{r}
proporcao = 25

amostrairis2 = strata(data = iris, stratanames = c("Species"),size =c(rep(proporcao,3)),method = "srswr")

´´´{r}
summary(amostrairis2)

´´´{r}
infert
summary(infert)

´´´{r}
amostra = strata(data = infert, stratanames = c("education"), size = c(5,48,47),method = "srswr")

´´´{r}
amostra
summary(amostra)