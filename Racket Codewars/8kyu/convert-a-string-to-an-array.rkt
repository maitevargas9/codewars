#|
Description

Write a function to split a string and convert it into an array of words.

Examples (Input ==> Output):

"Robin Singh" ==> ["Robin", "Singh"]

"I love arrays they are my favorite" ==> ["I", "love", "arrays", "they", "are", "my", "favorite"]
|#

#lang racket

(provide string-to-vector)

(define (string-to-vector string)
  (list->vector (string-split string)))