# Description
# Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).
# If they are, change the array value to a string of that vowel.
# Return the resulting array.

is_vow <- function(a) {
  if(sum(a %in% c(97, 101, 105, 111, 117)) == 0) {
    a
  }
  else {
      a<-gsub(97,"a", a)
      a<-gsub(101,"e", a)
      a<-gsub(105,"i", a)
      a<-gsub(111,"o", a)
      a<-gsub(117,"u", a)
  }
}