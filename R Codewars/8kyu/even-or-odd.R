# Description
# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

even_or_odd <- function(n) {
  ifelse(n %% 2 == 0, "Even", "Odd")
}