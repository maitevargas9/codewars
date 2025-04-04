# Description
# Triple Trouble
# Create a function that will return a string that combines all of the letters of the three inputed strings in groups. 
# Taking the first letter of all of the inputs and grouping them next to each other. Do this for every letter, see 
# example below!
# E.g. Input: "aa", "bb" , "cc" => Output: "abcabc"
# Note: You can expect all of the inputs to be the same length.

triple_trouble <- function(one, two, three) {
  return(paste0(mapply(paste0, strsplit(one, "")[[1]], strsplit(two, "")[[1]], strsplit(three, "")[[1]]), collapse = ""))
}
