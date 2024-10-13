# Description
# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, u as vowels for this Kata (but not y).
# The input string will only consist of lower case letters and/or spaces.

get_count <- function(input_str) {
  vowels <- c("a", "e", "i", "o", "u")
  count <- 0
  
  for (char in strsplit(input_str, "")[[1]]) {
    if (char %in% vowels) {
      count <- count + 1
    }
  }
  
  return(count)
}