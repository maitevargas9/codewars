#|
Description

Write a function which converts the input string to uppercase.
|#

#lang racket

(provide make-upper-case)

(define (make-upper-case str)
  (string-upcase str))