#|
Description

Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.
|#

#lang racket

(provide angle)

(define (angle n) (* (- n 2) 180))