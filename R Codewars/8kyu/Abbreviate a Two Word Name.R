# Description
# Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
# The output should be two capital letters with a dot separating them.
# It should look like this:
# Sam Harris => S.H
# patrick feeney => P.F

abbrev_name <- function(name) {
  return(paste(substr(strsplit(toupper(name), " ")[[1]], 1, 1), collapse = "."))
}