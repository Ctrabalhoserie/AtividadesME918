#Parte 0

library(purrr)
library(devtools)
library(usethis)

#Parte 1

#distribution: A distribuição utilizada no plano da simulação.
#Nomes dos parâmetros associado à distribuição conforme a tabela. Por exemplo: mu e sigma2.
#obs: Um inteiro contendo o número de observações no plano da simulação.
#rpois. rnorm e rbinom

f <- function(arg){
  if(arg$distribution == "poisson"){
    y <- rpois(arg$obs, arg$lambda)
  }
  if(arg$distribution == "normal"){
    y <- rnorm(arg$obs, arg$mu, arg$sigma2)
  }
  if(arg$distribution == "bernoulli"){
    y <- rbinom(arg$obs,1, arg$p)
  }
  
  return(y)
}

t = list(distribution = "poisson", lambda = 2.0, obs = 20)
t1 = list(distribution = "normal", mu = 1.2, sigma2 = 1.0, obs = 25)
t2 = list(distribution = "bernoulli", p = 0.3, obs = 30)


f(t)
f(t1)
f(t2)

#Parte 2





