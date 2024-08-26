# Description
# Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
# Return your answer as a number.

sum_mix <- function(vec) {
  return(sum(as.integer(vec)))
}