rev.str <- function(text = "racecar") {
  chars <- strsplit(text, "")[[1]] # Convert the string to a vector of characters

  reversed <- ""
  for (i in length(chars):1) {
    reversed <- paste(reversed, chars[i], sep="")
  }
  
  print(reversed)
}

rev.str()
rev.str("Hello World")
