#|
Description

Boxlines
Given a X*Y*Z box built by arranging 1*1*1 unit boxes, write a function f(X,Y,Z) that returns the 
number of edges (hence, boxlines) of length 1 (both inside and outside of the box)

Notes
Adjacent unit boxes share the same edges, so a 2*1*1 box will have 20 edges, not 24 edges
X,Y and Z are strictly positive, and can go as large as 2^16 - 1

Interactive Example
The following is a diagram of a 2*1*1 box. Mouse over the line segments to see what should be counted!
|#

#lang racket
(provide f)

(define (f x y z)
  (+ (* x (add1 y) (add1 z))
     (* (add1 x) y (add1 z))
     (* (add1 x) (add1 y) z)))