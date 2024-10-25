#|
Description

In this kata you should simply determine, whether a given year is a leap year or not. In case you
don't know the rules, here they are:
Years divisible by 4 are leap years,
but years divisible by 100 are not leap years,
but years divisible by 400 are leap years.
Tested years are in range 1600 ≤ year ≤ 4000.
|#

#lang racket

(provide leap-year?)

(define (leap-year? year)
  (or (and (not (= (remainder year 100) 0))
           (= (remainder year 4) 0))
      (= (remainder year 400) 0)))