####BDA Ch 3############

x = seq(from = -2, to = 2, by = 0.1)  # Specify vector of x values

y = x^2                               # specify corresponding y values

plot(x, y , col = "skyblue", type = "l") # default is dot, type determines the shape, in this case its l for line



ABC <- c("A","B","C")

rep(ABC, each =2, times = 2)


# ok rn this is not in an intutivie order
x = c("high","medium","low","high","medium")

x
xf = factor(x) # converting x into factor(categorical)

# integers is based on alphabetical order
xf
as.numeric(xf)

# reorder levels & even relabeling them

xf = factor(xf, levels=c("low","medium","high"), ordered = TRUE,
            labels = c("Bottom","Middle","Top"))

xf
as.numeric(xf)






for (countDown in 5:1) {
  show(countDown)
}


x = seq( from = -3, to = 3 , by = 0.1 )   # Specify vector of x values.
y = x^3                                   # Specify corresponding y values.
plot( x , y , col="skyblue" , type="o" )   # Plot the x,y points as a blue line.


# remember to search this
## saveGraph( file="Exercise.03.3" , type="eps")







