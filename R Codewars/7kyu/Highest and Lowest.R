# Description
# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
# Examples
# Input: "1 2 3 4 5"   =>  Output: "5 1"
# Input: "1 2 -3 4 5"  =>  Output: "5 -3"
# Input: "1 9 3 4 -5"  =>  Output: "9 -5"
# Notes
# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

high_and_low <- function(numbers) {
  numbers <- as.numeric(unlist(strsplit(numbers," ")))
  return(paste(max(numbers),  min(numbers)))
}