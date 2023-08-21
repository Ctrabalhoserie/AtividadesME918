source("executa.R")

#planos[[1]]
#amostra[[1]]

salvar <- function(i){
  
  plano <- planos[[i]]
  result <- amostra[[i]]
  distribuicao <- plano$distribution
  obs <- plano$obs
  new_i <- sprintf("%02d", i)
  
  if(distribuicao == "bernoulli"){
    p <- plano$p
    save(distribuicao, p, obs, result, file = paste0("resultados/simulacao",new_i , ".RData"))
  }
  if(distribuicao == "poisson"){
    lambda <- plano$lambda
    save(distribuicao, lambda, obs, result, file = paste0("resultados/simulacao",new_i, ".RData"))
  }
  if(distribuicao == "normal"){
    mu <- plano$mu
    sigma2 <- plano$sigma2
    save(distribuicao, mu, sigma2, obs, result, file = paste0("resultados/simulacao",new_i, ".RData"))
  }
  
  
}

walk(1:length(planos), salvar)






