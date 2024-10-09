# Description
# Write a function which calculates the average of the numbers in a given list.
# Note: Empty arrays should return 0.

find_average <- function(vec) {
  ifelse(length(vec) == 0, 0, mean(vec))
}