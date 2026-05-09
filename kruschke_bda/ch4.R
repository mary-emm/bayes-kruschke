#####Simulating coin flips

N = 500 # specify the total number of flips, denoted N
pHeads = 0.8 # Specify underlying probability of heads

# flip a coin N time and compute the running proportion of heads at each flip
# generate a random sample of N flips (heads - 1, tails = 0):
flipSequence = sample( x=c(0,1), prob=c(1-pHeads, pHeads), size=N, replace=TRUE)


# print(flipSequence)

r = cumsum(flipSequence) # cumulative sum: number of heads at each step
# print(1:500)
cumsum(c(0,0,0,1))
n = 1:N                  # number of flips at each step
runProp = r / n          # component by component division


# print(runProp)

# Graph the running proportion:
plot(n, runProp, type="o", log = "x", col="skyblue",
     xlim= c(1,N), ylim=c(0.0,1.0) , cex.axis =1.5,
     xlab="Flip Number", ylab="Proportion Heads", cex.lab = 1.5,
     main = "Running Proportion of Heads", cex.main = 1.5)


# plot a dotted horizontal reference line:
abline(h = pHeads, lty = "dotted")

# display the beginning of the flip sequence
flipLetters = paste( c("T","H")[flipSequence[1:10]+1], collapse ="")
displayString = paste0("Flip Sequence = ", flipLetters , "...")
text( N, .9, displayString, adj=c(1,0.5), cex=1.3)

# display the relative frequency at the end of the sequence (i.e, propotyion of head)
text(N, .8,paste("End Proportion =", runProp[N]), adj=c(1,0.5) , cex =1.3)


?sample





