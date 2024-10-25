#|
Description

Background
I have stacked some pool balls in a triangle.

Kata Task
Given the number of layers of my stack, what is the total height?
Return the height as multiple of the ball diameter.

Example
The image above shows a stack of 5 layers.

Notes
layers >= 0
approximate answers (within 0.001) are good enough
|#

#lang racket

(provide stack-height-2d)

(define (stack-height-2d layers)
  (if (= layers 0)
      0
      (+ (* (- layers 1) (/ (sqrt 3) 2)) 1)))