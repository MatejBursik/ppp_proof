extend_pascal_triangle <- function(triangle) {
  last_row <- triangle[[length(triangle)]]
  
  # Compute the next row
  next_row <- c(1, last_row[-length(last_row)] + last_row[-1], 1)
  triangle <- append(triangle, list(next_row))
  
  return(triangle)
}

generate_pascal_triangle <- function(n) {
  pascals_triangle <- list(c(1))
  
  for (i in 2:n-1) {
    pascals_triangle <- extend_pascal_triangle(pascals_triangle)
  }
  
  return(pascals_triangle)
}

pascals_triangle <- generate_pascal_triangle(11)
print(pascals_triangle)
