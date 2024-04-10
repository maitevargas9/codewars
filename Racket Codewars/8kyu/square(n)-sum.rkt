#|
Description

Complete the square sum function so that it squares each number passed into it 
and then sums the results together.

In Racket, use a list instead of an array, so '(1 2 2) should return 9.
|#

#lang racket

(provide square-sum)

(define (square-sum numbers)
  (apply + (map sqr numbers)))