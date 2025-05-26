#|
Description

This method, which is supposed to return the result of dividing its first argument by its second, 
isn't always returning correct values. Fix it.

#lang racket

(provide divide-numbers)

(define (divide-numbers x y)
  (quotient x y))
|#

#lang racket

(provide divide-numbers)

(define (divide-numbers x y)
  (/ (exact->inexact x) (exact->inexact y)))