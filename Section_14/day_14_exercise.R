# Function to find the index of the smallest element in a vector
find_min_idx <- function(v) {
  return(which.min(v))
}

# Selection sort function
selection_sort <- function(x) {
  n <- length(x)
  s <- numeric(0)
  u <- x
  
  while (length(u) > 0) {
    min_index <- find_min_idx(u)
    s <- c(s, u[min_index])
    u <- u[-min_index]
  }
  
  return(s)
}

x <- c(0, 64, 25, 12, 22, 11, 1, 101)
sorted_x <- selection_sort(x)
print(sorted_x)
