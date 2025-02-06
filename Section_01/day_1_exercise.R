T.test <- function(y1, y2) {
  n1 <- length(y1)
  n2 <- length(y2)
  
  y1_bar <- mean(y1)
  y2_bar <- mean(y2)
  numerator <- y1_bar - y2_bar
  
  s1_sq <- var(y1)
  s2_sq <- var(y2)
  pooled_variance <- ((n1 - 1) * s1_sq + (n2 - 1) * s2_sq) / (n1 + n2 - 2)
  s <- sqrt(pooled_variance * (1/n1 + 1/n2))
  
  t_value <- numerator / s
  
  return(t_value)
}

# Test function
test_T.test <- function() {
  set.seed(123) # For reproducibility
  sample1 <- rnorm(10, mean = 5, sd = 2)
  sample2 <- rnorm(10, mean = 6, sd = 2)
  
  computed_t <- T.test(sample1, sample2)
  expected_t <- t.test(sample1, sample2, var.equal = TRUE)$statistic
  
  if (abs(computed_t - expected_t) < 1e-6) {
    print("Test passed!")
  } else {
    print("Test failed!")
  }
}

test_T.test()
