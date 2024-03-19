# Description
# When provided with a letter, return its position in the alphabet.
# Input :: "a"
# Ouput :: "Position of alphabet: 1"

position <- function(alphabet) {
  alphabet <- tolower(alphabet)
  position <- match(alphabet, letters)
  return(paste("Position of alphabet:", position))
}