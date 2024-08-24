# Description
# Beta Kata
# Thank you for trying this beta kata. Once you've completed it, please rate how satisfied you are with this kata and rank it. 
# Katas can only get out of beta if they are rated very satisfied. If you don't give it a very satisfied rating, share your 
# reasons for keeping the kata in beta in a comment as a suggestion or issue. Once the suggestion or issue is resolved, please 
# re-rate as very satisfied. Note that a kata that is too easy or too hard should not be given a lower satisfaction rating, but 
# given a kyu ranking that matches the kata's difficulty. This kata, in particular, is meant to teach some basics about the R 
# language, so please don't downvote because you think it is too easy or a duplicate.
# What's a string in R?
# For our purposes, when we say string, we mean an element in a character vector.
# Why turn a string into a character vector?
# In R, the tools for manipulating individual characters in a string, for example, "l" in "hello", are limited. Usually, you'll 
# want to convert that string to a character vector where each element has only one character, for example, "h" "e" "l" "l" "o"
# Task
# Write a function expand() that takes a character vector of length 1 (a single string), and turns it into a character vector of 
# all the characters in that string. If there are no characters in the string (see the second example), return an empty character 
# vector (a character vector of length 0). Important note: make sure your function returns a character vector, not a list
# Examples
# expand("hello")
# [1] "h" "e" "l" "l" "o"
# expand("")
# [1] character(0)

expand <- function(s) {
  return(unlist(strsplit(s, "")))
}