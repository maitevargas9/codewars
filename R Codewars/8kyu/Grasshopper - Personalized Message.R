# Description
# Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
# Use conditionals to return the proper message:
# case	             return
# name equals owner	 'Hello boss'
# otherwise	         'Hello guest'

greet <- function(name, owner) {
  if (name == owner) {
    greeting <- paste("Hello boss")
  } 
  else {
    greeting <- paste("Hello guest" )
  }
  return(greeting)
}