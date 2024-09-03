# Description
# Your friend has been out shopping for puppies (what a time to be alive!)... He arrives back with multiple dogs, and you simply 
# do not know how to respond!
# By repairing the function provided, you will find out exactly how you should respond, depending on the number of dogs he has.
# The number of dogs will always be a number and there will always be at least 1 dog.
# The expected behaviour is as follows:
# Your friend has fewer than 10 dogs:                    "Hardly any"
# Your friend has at least 10 but fewer than 51 dogs:    "More than a handful!"
# Your friend has at least 51 but not exactly 101 dogs:  "Woah that's a lot of dogs!"
# Your friend has 101 dogs:                              "101 DALMATIANS!!!"
# Your friend will always have between 1 and 101 dogs, inclusive.
# how_many_dalmatians <- function( n ) {
#    if n = 101 {
#      return "101 DALMATIANS!!!"
#    elif n < 10 {
#      return "Hardly any"
#    } elif n < 50 {
#      return "More than a handful!"
#    }
#    
#    return "Woah that's a lot of dogs!"
# }

how_many_dalmatians <- function(n) {
    if (n == 101) {
      response <- "101 DALMATIANS!!!"
    }
    else if (n <= 10) {
      response <- "Hardly any"
    } 
    else if (n <= 50) {
      response <- "More than a handful!"
    }
    else {
      response <- "Woah that's a lot of dogs!"
    }
    return(response)
}