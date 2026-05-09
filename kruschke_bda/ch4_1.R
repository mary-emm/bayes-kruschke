# from example
show(HairEyeColor) # show data ( theres )

EyeHairFreq = apply(HairEyeColor,c("Eye", "Hair"), sum) # sum across sex

EyeHairFreq # this adds each element in the row of both tables

EyeHairProp = EyeHairFreq/sum(EyeHairFreq) # joint probability

# Hair
# Eye           Black      Brown        Red      Blond
# Brown 0.114864865 0.20101351 0.04391892 0.01182432
# Blue  0.033783784 0.14189189 0.02871622 0.15878378
# Hazel 0.025337838 0.09121622 0.02364865 0.01689189
# Green 0.008445946 0.04898649 0.02364865 0.02702703


show(round(EyeHairProp, 2))


EyeHairFreq
# Hair
# Eye     Black Brown Red Blond
# Brown    68   119  26     7
# Blue     20    84  17    94
# Hazel    15    54  14    10
# Green     5    29  14    16


HairFreq = apply( HairEyeColor , c("Hair") , sum ) # Sum across sex and eye

# so now we want to sum of hair color across all eye color
HairFreq   

# Black Brown   Red Blond 
# 108   286    71   127 

# marginal proportion of HairFreq
HairProp = HairFreq/sum(HairFreq)

show(round(HairProp,2))

# Black Brown   Red Blond 
# 0.18  0.48  0.12  0.21 


EyeFreq = apply(HairEyeColor, c("Eye"), sum) # sum across sex & eye

EyeFreq

# Brown  Blue Hazel Green 
# 220   215    93    64 

EyeProp = EyeFreq/sum(EyeFreq)

EyeProp

show(round(EyeProp,2))

# Brown  Blue Hazel Green 
# 0.37  0.36  0.16  0.11

# get proportion of all blue eyes across all hair color
EyeHairProp["Blue",]/EyeProp["Blue"] # conditional probability

# Black      Brown        Red      Blond 
# 0.09302326 0.39069767 0.07906977 0.43720930 

# so giving the proportion

EyeHairProp["Blue","Blond"]/EyeProp["Blue"] # conditional probability that someone has blond hair given they have blue eyes

EyeHairProp["Blue",]/EyeProp["Blue"] # conditional probability for all hair color, sama je 



#############Now prob of hair colors given Brown Eyes###############
# P(Haircolor | Brown Eyes) = P(haircolor*, brown eyes) / p(brown eyes)

# Hair colors given brown eyes
EyeHairProp["Brown",] / EyeProp["Brown"]

# Black      Brown        Red      Blond 
# 0.30909091 0.54090909 0.11818182 0.03181818

# P(Black Hair| Brown Eyes) = P(Black Hair, Brown Eyes)/P(Brown Eyes)
0.114864865 / 0.3716216



# Eye colors given brown hair
EyeHairProp[,"Brown"] / HairProp["Brown"]













