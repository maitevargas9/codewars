#|
Description

Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).

If they are, change the array value to a string of that vowel.

Return the resulting array.
|#

#lang racket

(provide convert-vowels)

(define (convert-vowels numbers)
  (let ([s '(#\a #\e #\i #\o #\u)]) 
    (map (λ (nc) 
            (if (member (integer->char nc) s)
                (string (integer->char nc))
                nc))
         numbers)))