source("kruschke_bda/DBDA2Eprograms/DBDA2E-utilities.R")
source("kruschke_bda/DBDA2Eprograms/BernGrid.R")

Thetha = seq(0,1, length =1001) # specify the comb for thetha or in other words, all the thetha we want to consider
print(Thetha)

pTheta = pmin(Thetha , 1-Thetha) #triangular sha
print(pTheta)

pTheta = pTheta/sum(pTheta)  # normalizing it so sum of pthetha equals to 1

print(pTheta)


Data = c(rep(0,3),rep(1,1)) # meaing 0 3 times, and 1 1 times
print(Data)

openGraph(width=5, height = 7) # open graphic window

posterior = BernGrid( Thetha, pTheta, Data, plotType = "Bars",
                      showCentTend = "Mode", showHDI = TRUE, showpD = FALSE)










