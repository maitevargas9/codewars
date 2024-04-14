# Description
# Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

remove_exclamation_marks <- function(s) {
  return(gsub("!", "", s))
}