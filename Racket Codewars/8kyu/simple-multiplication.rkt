#|
Description

This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.
|#

#lang racket

(provide simple-multiplication)

(define (simple-multiplication z)
  (* z (if (even? z) 8 9))
)