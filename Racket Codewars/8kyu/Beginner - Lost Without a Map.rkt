#|
Description

Given an array of integers, return a new array with each value doubled.

For example:
[1, 2, 3] --> [2, 4, 6]
;for racket you are given a list
(maps '(1 2 3)) ; returns '(2 4 6)
|#

#lang racket
(require rackunit rackunit/text-ui)

(provide maps)

(define (maps lst)
  (map (lambda (num) (* num 2)) lst))