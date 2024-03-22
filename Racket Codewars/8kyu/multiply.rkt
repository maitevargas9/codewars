#|
Description

This code does not execute properly. Try to figure out why.

#lang racket
(provide multiply)

(define (multiply a b) (+ a b))
|#

#lang racket
(provide multiply)

(define (multiply a b) (* a b))