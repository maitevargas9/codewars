#|
Description

Some new animals have arrived at the zoo. The zoo keeper is concerned that perhaps the animals do 
not have the right tails. To help her, you must correct the broken function to make sure that the 
second argument (tail), is the same as the last letter of the first argument (body) - otherwise the 
tail wouldn't fit!

If the tail is right return true, else return false.

The arguments will always be non empty strings, and normal letters.

#lang racket

(provide correct-tail)

(define (correct-tail body tail)

  (define sub (substring body (- (length body) (length tail))
  (if equal? sub tail #t #f)
|#

#lang racket

(provide correct-tail)

(define (correct-tail body tail)
  (if (equal? tail (substring body (sub1 (string-length body)))) #t #f))