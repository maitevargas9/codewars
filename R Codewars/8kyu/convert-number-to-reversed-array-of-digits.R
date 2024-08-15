# Description
# Convert number to reversed array of digits
# Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
# Example(Input => Output):
# 35231 => [1,3,2,5,3]
# 0 => [0]

digitize <- function(n) {
  num_s <- as.character(n)
  num_char <- strsplit(num_s, "")[[1]]
  rev_num_char <- rev(num_char)
  as.numeric(rev_num_char)
}