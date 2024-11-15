#|
Description

If you can't sleep, just count sheeps!!

Task:
Given a non-negative integer, 3 for example, return a string with a murmur: 
"1 sheep...2 sheep...3 sheep...". Input will always be valid, i.e. no negative integers.
|#

#lang racket

(provide count-sheep)

(define (count-sheep count)
  (define (sheep-helper i res)
    (if (= i count)
        res
        (sheep-helper (+ i 1) (string-append res (number->string (+ i 1)) " sheep..."))))
  (sheep-helper 0 ""))