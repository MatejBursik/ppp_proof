# Generate a numeric vector
vec.maker.num <- function(len = 5) {
  if (len < 5 | len > 20) stop("Length must be between 5 and 20")
  sample(1:10, len, replace = TRUE)
}

# Generate a character vector
vec.maker.alph <- function(len = 5) {
  if (len < 5 | len > 20) stop("Length must be between 5 and 20")
  sample(letters, len, replace = TRUE)
}

# Generate a boolean vector
vec.maker.bool <- function(len = 5) {
  if (len < 5 | len > 20) stop("Length must be between 5 and 20")
  sample(c(TRUE, FALSE), len, replace = TRUE)
}

# Test cases
print(vec.maker.num())
print(vec.maker.alph())
print(vec.maker.bool())

print(vec.maker.num(10))
print(vec.maker.alph(15))
print(vec.maker.bool(20))