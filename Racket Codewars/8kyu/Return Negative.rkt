#|
Description

In this simple assignment you are given a number and have to make it negative. But maybe the number 
is already negative?

Examples
(make-negative 1)    ; -1
(make-negative -5)   ; -5
(make-negative 0)    ; 0
(make-negative 0.12) ; -0.12

Notes
The number can be negative already, in which case no change is required.
Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.
|#

#lang racket

(provide make-negative)

(define (make-negative n)
  (cond
    [(= n 0) 0]
    [(> n 0) (* n -1)]
    [else n]))