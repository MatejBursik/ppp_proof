# Define 'teacher'
setClass("teacher",
         slots = list(
           name = "character",
           salary = "numeric",
           phd = "logical"
         ))

# Create instances of 'teacher'
t1 <- new("teacher", name = "Alice", salary = 55000, phd = TRUE)
t2 <- new("teacher", name = "Bob", salary = 48000, phd = FALSE)
t3 <- new("teacher", name = "Charlie", salary = 62000, phd = TRUE)

# Show method for 'teacher'
setMethod("show", "teacher", function(object) {
  cat(object@name, "is paid a salary of", object@salary, "and",
      ifelse(object@phd, "is doctorally-qualified.\n", "is not doctorally-qualified.\n"))
})

show(t1)
show(t2)
show(t3)
