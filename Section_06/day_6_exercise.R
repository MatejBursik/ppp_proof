# solution 1
vector.maker <- function(n = sample((5:10), 1)) {
  l <- list(
    sample(1:100, n),
    sample(letters, n),
    sample(c(rep(T, 25), rep(F, 25)), n)
  )
  
  return(unlist(sample(c(l[1], l[2], l[3]), 1)))
}

df1.maker <- function(...){
  data <- list(...)
  df <- data.frame(cbind(...))
  if(length(data) > 2) {
    return(df)
  }
  v <- sample(2:9, 1)
  df <- data.frame(replicate(v, vector.maker(5)))
  return(df)
}

x <- c(1, 2, 3, 4, 5)
y <- c(1.2, 3.4, 5, 6.7, 8)
z <- c('a','b','c','d','e')

df1.maker()
df1.maker(x)
df1.maker(x, y, z)

# solution 2
matrix.maker <- function(row = sample(5:10, 1), col = sample(5:10, 1), data = sample((1:100), row * col, replace = T)) {
  matrix(data, row, col)
}

list.maker <-function(...){
  data <- list(...)
  my.list <- list(...)
  if (length(data) > 0) {
    return(my.list)
  }
  
  return(list(vector.maker(),matrix.maker(),df1.maker()))
}

list.maker()
list.maker(x)
list.maker(x, y, z)
list.maker(matrix.maker(), vector.maker(), df1.maker(), list.maker())
