# Description
# Let us consider integer coordinates x, y in the Cartesian plane and three functions f, g, h defined by:
# f: 1 <= x <= n, 1 <= y <= n --> f(x, y) = min(x, y)
# g: 1 <= x <= n, 1 <= y <= n --> g(x, y) = max(x, y)
# h: 1 <= x <= n, 1 <= y <= n --> h(x, y) = x + y
# where n is a given integer (n >= 1) and x, y are integers.
# In the table below you can see the value of the function f with n = 6.
# The task is to calculate the sum of f(x, y), g(x, y) and h(x, y) for all integers x and y in the domain D: 
# (1 <= x <= n, 1 <= y <= n).
# The function sumin (sum of f) will take n as a parameter and return the sum of min(x, y) in D.
# The function sumax (sum of g) will take n as a parameter and return the sum of max(x, y) in D.
# The function sumsum (sum of h) will take n as a parameter and return the sum of x + y in D.
# Examples:
# sumin(6) --> 91 (You can verify with the above table for n = 6)
# sumax(6) --> 161
# sumsum(6) --> 252
# sumin(45) --> 31395
# sumax(45) --> 61755
# sumsum(45) --> 93150
# sumin(999) --> 332833500
# sumax(999) --> 665167500
# sumsum(999) --> 998001000
# sumin(5000) --> 41679167500
# sumax(5000) --> 83345832500
# sumsum(5000) --> 125025000000 

sumin <- function(n) {
  return(sum(as.numeric(outer(1:n, 1:n, "pmin"))))
}

sumax <- function(n) {
  return(sum(as.numeric(outer(1:n, 1:n, "pmax"))))
}

sumsum <- function(n) {
  return(sum(as.numeric(outer(1:n, 1:n, "+"))))
}