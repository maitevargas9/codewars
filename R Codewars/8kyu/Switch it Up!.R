# Descriptiom
# When provided with a number between 0-9, return it in words.
# Input :: 1
# Output :: "One".
# If your language supports it, try using a switch statement.

switch_it_up <- function(number) {
  return(switch(number + 1, "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"))
}
