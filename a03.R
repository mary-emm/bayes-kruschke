library(rethinking)

# function to simulate weights of individuals from height

# function that takes in height beta,& the standard deviation
sim_weight <- function(H,b, sd) {
  
  # the distribution of noise, the assertion is tht it will be normally distributed
  U <- rnorm(length(H), 0 , sd)
  
  # the additive function
  W <- b*H + U
  
  return(W)
}

####Generating fake heights######

# runif(#sample, min, max) , eg: randomly generate 200 samples between 130 & 170
H <- runif(200, min = 130, max= 170)

W <- sim_weight(H, b= 0.5, sd = 5)

# print(H)
# plot(H)

plot(W ~ H, col = 2, lwd = 3) 



## Quadratic approximatin

m3.1 <- quap(
  alist(
    W ~ dnorm(mu, sigma),
    mu <- a + b*H,
    a ~ dnorm(0,10),
    b ~ dunif(0,1),
    sigma ~ dunif(0,10)
  ), data = list(W=W, H=H)
)

print(m3.1)

# summary
precis(m3.1)


