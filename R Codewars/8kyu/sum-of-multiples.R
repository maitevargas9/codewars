# Description
# Your Job
# Find the sum of all multiples of n below m
# Keep in Mind
# n and m are natural numbers (positive integers)
# m is excluded from the multiples
# Examples
# sum_mul(2, 9)   ==> 2 + 4 + 6 + 8 = 20
# sum_mul(3, 13)  ==> 3 + 6 + 9 + 12 = 30
# sum_mul(4, 123) ==> 4 + 8 + 12 + ... = 1860
# sum_mul(4, -7)  ==> "INVALID"

sum_mul <- function(n, m) {
  if (n < 1 | m < 1) {
    return("INVALID")
  }
  else if (m <= n | m == n ) {
    return(0)
  }
  r <- 0
  for(i in seq(n,m-1)) {
    if(i %% n == 0) {
      r = r+ i
    }
  }
  return(r)
}