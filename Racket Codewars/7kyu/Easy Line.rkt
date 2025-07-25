#|
Description

In the drawing below we have a part of the Pascal's triangle, horizontal lines are numbered from zero (top).

We want to calculate the sum of the squares of the binomial coefficients on a given horizontal line with a 
function called easyline (or easyLine or easy-line).

Can you write a program which calculate easyline(n) where n is the horizontal line number?

The function will take n (with: n>= 0) as parameter and will return the sum of the squares of the binomial 
coefficients on line n.

Examples:
easyline(0) => 1
easyline(1) => 2
easyline(4) => 70
easyline(50) => 100891344545564193334812497256

Ref:
http://mathworld.wolfram.com/BinomialCoefficient.html

Note:
In Javascript, Coffeescript, Typescript, C++, PHP, C, R, Nim, Fortran to get around the fact that we have no 
big integers the function easyLine(n) will in fact return round(log(easyline(n))) and not the easyline(n) of 
the other languages.

So, in Javascript, Coffeescript, Typescript, C++, PHP, R, Nim, C, Fortran:
easyLine(0) => 0
easyLine(1) => 1
easyLine(4) => 4
easyLine(50) => 67
|#

#lang racket
(provide easy-line)

(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(define (easy-line n)
  (if (= n 0)
      1
      (let* ([fact-2n (factorial (* 2 n))])
        (/ fact-2n (* (factorial n) (factorial n))))))