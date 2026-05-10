 # This exercise serves to re-enforce my understanding of the coin flip experiment
# the purpose of this is to eventually see whether the coin is biased
# or fair

# 1= head, 0 = tails

####################
# Creating the grid
###################
# create 11 thetha value from 0 to 1
# this just means we're considering 0.1(biased to tails), 0.2 ... 1.0(biased to heads)

theta = seq(0,1, length = 11)
print(theta)

# output: 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0

####################
# Creating the prior 
###################
# here were using a triangular prior

prior_raw = pmin(theta, 1-theta)
print(prior_raw) # this not normalize yet

#                            here
# output: 0.0 0.1 0.2 0.3 0.4 0.5 0.4 0.3 0.2 0.1 0.0
# it being peak at 0.5, os have a stronger belief that the 
# coin is fair


####################
# Normalize the prior 
####################
# its just cause we want it to sum up to 1

print(sum(prior_raw)) # see this equals to 2.5

prior = prior_raw/sum(prior_raw)
print(prior)

# Plot prior
barplot(prior, main = "Prior distribution",
        xlab = "Prior",names.arg = theta)

# before normalizing
# output: 0.0 0.1 0.2 0.3 0.4 0.5 0.4 0.3 0.2 0.1 0.0

# after normalizing
# output: 0.00 0.04 0.08 0.12 0.16 0.20 0.16 0.12 0.08 0.04 0.00
print(sum(prior)) # now equals to 1


##################################
# Data
##################################
# Now we define the data, remember the whole idea
# of Bayes is that, posterior is proportionate to
# the prior times likelihood

# Here we re using 4 coin flips, in which their 3 heads 1 tail

data = c(1,1,1,0)
print(data)
n_heads = sum(data)
print(paste("Heads:", n_heads))
n_tails = length(data)-n_heads
print(paste("Tails:", n_tails))


###################################
# Calculate likelihood
##################################
# okay Iwe're using bernouli likelihood function
# for each thetha we're considering, caulcate the likelihood 

likelihood_raw = theta^n_heads * (1-theta)^n_tails
print(paste("Likelihood: ", likelihood_raw))

print(sum(likelihood)) # similar to the prior we need to normalize it

likelihood = likelihood_raw/sum(likelihood_raw)

print(sum(likelihood))

# The result shows how likely our data is for each theta value

# Plot likelihood  
barplot(likelihood, main="Likelihood Distribution",
        xlab="Prior",names.arg = theta)



###################################
# Calculate posterior
##################################

# actually i ddint have to normlaize it each step
# but it was mostly so my distirbution is corerec thts all
posterior_unnorm = prior * likelihood


print(sum(posterior_unnorm)) # need to normalize (remember multiplocation doesnt perserve nums)


posterior = posterior_unnorm / sum(posterior_unnorm)
print(sum(posterior))

# Plot posterior
barplot(posterior, main="Posterior Distribution",
        xlab="Posterior",names.arg = theta)

# get mode of thetha (which theta has highers posetrior)
mode_idx = which.max(posterior)
print(mode_idx)

mode_value = theta[mode_idx]
print(paste("Posteriro mode for ",n_heads, " heads & " ,n_tails, " tails is : ", mode_value))
