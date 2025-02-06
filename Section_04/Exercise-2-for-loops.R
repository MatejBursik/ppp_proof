##################################################
#####          EXERCISE #2 FOR LOOPS         #####
##################################################
#####        MERGE TWO SORTED VECTORS        #####
##################################################

# Write a program to merge two sorted vectors into 
# a single sorted vector. Do not use the sort(x) 
# function, and try to make your program as 
# efficient as possible. That is, try to minimize 
# the number of operations required to merge the
# vectors.

# vectors
x <- 1:10;x
y <- seq(2, 20, 2);y

# merge
z <- rep(0, length(x) + length(y))
z

xx <- 1
yy <- 1
while (xx <= length(x) && yy <= length(y)) {
  if (x[xx] < y[yy]) {
    # add current x element to z
    z[xx+yy-1] <- x[xx]
    xx <- xx+1
  } else {
    # add current y element to z
    z[xx+yy-1] <- y[yy]
    yy <- yy+1
  }
}
if (xx > length(x)) {
  # finished x, add remaining y to z
  z[(xx+yy-1):(length(x)+length(y))] <- y[yy:length(y)]
} else if (yy > length(y)) {
  # finished y, add remaining x to z
  z[(xx+yy-1):(length(x)+length(y))] <- x[xx:length(x)]
} else {
  # this should not be possible
  cat('ERROR!\n')
}

print(z)