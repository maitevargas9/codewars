# Description
# Given a string, you have to return a string in which each character (case-sensitive) is repeated once.
# Examples (Input -> Output):
# * "String"      -> "SSttrriinngg"
# * "Hello World" -> "HHeelllloo  WWoorrlldd"
# * "1234!_ "     -> "11223344!!__  "
# Good Luck!

double_char <- function(str) {
  return(paste(sapply(strsplit(str, NULL)[[1]], function(c) paste(c, c, sep = "")), collapse = ""))
}