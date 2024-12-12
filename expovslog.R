N0 <- exp(6.8941709)

r <- 0.0100086

K <- 59790000000 

expo_fun <- function(t) {
  
  N <- N0*(1+r)^t
  
  return(N)
  
}

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

ggplot(aes(t,N), data = growth_data) +

geom_function(fun=logistic_fun, aes(colour="Logsitic Growth")) +
  
  geom_function(fun=expo_fun, aes(colour="Exponential Growth")) +
  
  labs(colour=NULL) +
  
  scale_y_continuous(trans='log10')

  