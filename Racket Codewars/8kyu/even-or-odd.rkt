#|
Description

Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
|#

#lang racket

(provide even-or-odd)

(define (even-or-odd n) (if (even? n) "Even" "Odd"))