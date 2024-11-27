# Description
# Steps
# Square the numbers that are greater than zero.
# Multiply by 3 every third number.
# Multiply by -1 every fifth number.
# Return the sum of the sequence.
# Example
# { -2, -1, 0, 1, 2 } returns -6
# 1. { -2, -1, 0, 1 * 1, 2 * 2 }
# 2. { -2, -1, 0 * 3, 1, 4 }
# 3. { -2, -1, 0, 1, -1 * 4 }
# 4. -6
# P.S.: The sequence consists only of integers. And try not to use "for", "while" or "loop" statements.

calc <- function(arr) {
  arr[arr > 0] <- arr[arr > 0] ** 2
  if (length(arr) > 2) {
    arr[seq(3, length(arr), 3)] <- arr[seq(3, length(arr), 3)] * 3
  }
  if (length(arr) > 4) {
    arr[seq(5, length(arr), 5)] <- -arr[seq(5, length(arr), 5)]
  }
  return(sum(arr))
}