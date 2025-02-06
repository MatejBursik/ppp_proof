# Selection Sort
selection.sort <- function(x) {
  n <- length(x)
  for (i in 1:(n-1)) {
    # Smallest index
    min_idx <- i
    for (j in (i+1):n) {
      if (x[j] < x[min_idx]) {
        min_idx <- j
      }
    }
    if (min_idx != i) {
      temp <- x[i]
      x[i] <- x[min_idx]
      x[min_idx] <- temp
    }
  }
  return(x)
}

# Insertion Sort
insertion.sort <- function(x) {
  n <- length(x)
  for (i in 2:n) {
    key <- x[i]
    j <- i - 1
    while (j > 0 && x[j] > key) {
      x[j + 1] <- x[j]
      j <- j - 1
    }
    x[j + 1] <- key
  }
  return(x)
}

# Bubble Sort
bubble.sort <- function(x) {
  n <- length(x)
  swapped <- TRUE
  while (swapped) {
    swapped <- FALSE
    for (i in 1:(n-1)) {
      if (x[i] > x[i+1]) {
        temp <- x[i]
        x[i] <- x[i+1]
        x[i+1] <- temp
        swapped <- TRUE
      }
    }
  }
  return(x)
}

# Quick Sort (from the exercise)
quick.sort <- function(x) {
  if (length(x) <= 1) return(x)
  smalls <- c()
  bigs <- c()
  for (i in 2:length(x)) {
    if (x[i] < x[1]) {
      smalls <- c(x[i], smalls)
    } else {
      bigs <- c(x[i], bigs)
    }
  }
  return(c(quick.sort(smalls), x[1], quick.sort(bigs)))
}

# Quick Sort with preallocated arrays
quick.sort2 <- function(x) {
  if (length(x) <= 1) return(x)
  smalls <- rep(0, length(x)-1)
  bigs <- rep(0, length(x)-1)
  j <- 0
  k <- 0
  for (i in 2:length(x)) {
    if (x[i] < x[1]) {
      j <- j + 1
      smalls[j] <- x[i]
    } else {
      k <- k + 1
      bigs[k] <- x[i]
    }
  }
  return(c(quick.sort(smalls[0:j]), x[1], quick.sort(bigs[0:k])))
}

# Set seed for reproducibility
set.seed(600617)

# Run timing tests
x <- runif(300)
print(system.time(bubble.sort(x)))
print(system.time(selection.sort(x)))
print(system.time(insertion.sort(x)))
print(system.time(quick.sort(x)))
print(system.time(quick.sort2(x)))
print(system.time(sort(x)))  # R-native function

# Using a longer vector
x <- runif(5000)
print(system.time(selection.sort(x)))
print(system.time(insertion.sort(x)))
print(system.time(quick.sort(x)))
print(system.time(quick.sort2(x)))
print(system.time(sort(x)))  # R-native function

# Using an even longer vector
x <- runif(50000)
print(system.time(quick.sort(x)))
print(system.time(quick.sort2(x)))
print(system.time(sort(x)))  # R-native function
