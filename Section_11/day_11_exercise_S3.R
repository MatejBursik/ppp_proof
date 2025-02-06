# Constructor for 'student'
student <- function(gender, age, GPA) {
  obj <- list(gender = gender, age = age, GPA = GPA)
  class(obj) <- "student"
  return(obj)
}

# Print method for 'student'
print.student <- function(obj) {
  cat("Student Details:\n")
  cat("Gender:", obj$gender, "\n")
  cat("Age:", obj$age, "\n")
  cat("GPA:", obj$GPA, "\n")
}

s1 <- student("Male", 21, 3.5)
print(s1)
