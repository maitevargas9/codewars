#|
Description

Write a function that accepts an integer n and a string s as parameters, and returns a string of s 
repeated exactly n times.

Examples (input -> output)
6, "I"     -> "IIIIII"
5, "Hello" -> "HelloHelloHelloHelloHello"
|#

#lang racket

(provide repeat-string)

(define (repeat-string count str)
  (cond
   ((= count 0) "")
   ((= count 1) str)
   ((> count 1) 
    (string-append(repeat-string (- count 1) str) str))
  )
)