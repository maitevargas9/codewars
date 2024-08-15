#|
Description

It's pretty straightforward. Your goal is to create a function that removes the first and last 
characters of a string. You're given one parameter, the original string. You don't have to worry
about strings with less than two characters.
|#

#lang racket

(provide remove-char)

(define (remove-char str)
  (substring str 1 (sub1 (string-length str))))