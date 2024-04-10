#|
Description

Very simple, given a number (integer / decimal / both depending on the language), 
find its opposite (additive inverse).

Examples
1: -1
14: -14
-34: 34
|#

#lang racket

(provide opposite)

(define (opposite n) (- n))