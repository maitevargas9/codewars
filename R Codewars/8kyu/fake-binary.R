# Description
# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. 
# Return the resulting string.
# Note: input will never be an empty string

fake_bin <- function(x) {
  x <-gsub('[0-4]',0,x);
  x <- gsub('[5-9]',1,x);
  print(x);
}