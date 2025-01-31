#|
Description

You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. 
Let x be any string in the first array and y be any string in the second array.

Find max(abs(length(x) − length(y)))

If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return 
Nothing (None).

Example:
a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
mxdiflg(a1, a2) --> 13

Bash note:
input : 2 strings with substrings separated by ,
output: number as a string
|#

#lang racket
(provide max-dif-length)

(define (max-dif-length s1 s2)
  (if (or (null? s1) (null? s2))
      -1
      (let* ([l1 (map string-length s1)]
             [l2 (map string-length s2)]
             [max1 (apply max l1)]
             [min1 (apply min l1)]
             [max2 (apply max l2)]
             [min2 (apply min l2)])
        (max (- max1 min2) (- max2 min1)))))