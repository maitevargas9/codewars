#|
Description

Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

Return your answer as a number.
|#

#lang racket

(provide sum-mix)

(define (sum-mix lst)
  (for/sum [(n lst)] (if (string? n) (string->number n) n)))