# Description
# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.

find_short <- function(s) {
  words <- strsplit(s, " ")[[1]]
  word_lengths <- nchar(words)
  return(min(word_lengths))
}