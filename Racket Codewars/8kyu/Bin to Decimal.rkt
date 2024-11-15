#|
Description

Complete the function which converts a binary number (given as a string) to a decimal number.
|#

#lang racket

(provide binary->decimal)

(define (binary->decimal binary)
  (string->number binary 2))