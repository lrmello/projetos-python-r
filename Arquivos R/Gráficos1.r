´´´{r}
library(semTools)

´´´{r}
z = rep(0,500)

for (i in 1:500) {
  m = mvrnonnorm(1000,c(1,2), matrix(c(10,2,2,5),2,2),skewness = c(5,2),kurtosis = c(3,3))
  
  z[i] = mean(m)
  
  if(i<4){
     
     hist(m,breaks = 50, main = paste0("Histrograma",i))
    
  }
}

hist(z)


