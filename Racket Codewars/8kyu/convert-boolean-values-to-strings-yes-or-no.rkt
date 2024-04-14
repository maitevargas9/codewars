#|
Description

Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.
|#

#lang racket

(provide bool->word)

(define (bool->word b) (if b "Yes" "No"))