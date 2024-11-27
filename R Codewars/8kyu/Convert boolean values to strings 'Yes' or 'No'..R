# Description
# Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

bool_to_word <- function(bool) {
  return(ifelse(bool, "Yes", "No"))
}