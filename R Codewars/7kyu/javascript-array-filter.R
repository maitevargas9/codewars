# Description
# The solution would work like the following:
# get_even_numbers(c(2,4,5,6)) => c(2,4,6)

get_even_numbers <- function(vec) {
  vec[vec %% 2 == 0]
}