##################################################
#####         EXERCISE #3 FOR LOOPS          #####
##################################################
#####      SIMULATE THE GAME OF CRAPS        #####
##################################################

# The game of craps is played as follows. First, 
# you roll two six-sided dice; let x be the sum of
# the dice on the first roll. If x = 7 or 11 you 
# win, otherwise you keep rolling until either you 
# get x again, in which case you also win, or
# until you get a 7 or 11, in which case you lose.

# Write a program to simulate a game of craps. You 
# can use the following snippet of code to simulate 
# the roll of two (fair) dice:

# x <- sum(ceiling(6*runif(2)))

finished <- FALSE  # TRUE if game has finished

initial.roll <- sum(ceiling(6*runif(2)))
cat('Initial roll:', initial.roll, '\n')
if (initial.roll == 7 || initial.roll == 11) {
  win <- TRUE
  finished <- TRUE
}

while (!finished) {
  current.roll <- sum(ceiling(6*runif(2)))
  cat('next roll:', current.roll, '\n')
  if (current.roll == 7 || current.roll == 11) {
    win <- FALSE
    finished <- TRUE
  } else if (current.roll == initial.roll) {
    win <- TRUE
    finished <- TRUE
  }
}

if (win) {
  cat('You win\n')
} else {
  cat('You lose\n')
}