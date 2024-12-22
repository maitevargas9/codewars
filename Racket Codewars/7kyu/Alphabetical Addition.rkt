#|
Description

Your task is to add up letters to one letter.
The function will be given a list of letters (chars), each one being a letter to add. Return a char.

Notes:
Letters will always be lowercase.
Letters can overflow (see second to last example of the description)
If no letters are given, the function should return 'z'

Examples:
(add-letters '(#\a #\b #\c)) ; #\f
(add-letters '(#\z)) ; #\z
(add-letters '(#\a #\b)) ; #\c
(add-letters '(#\c)) ; #\c
(add-letters '(#\z #\a)) ; #\a
(add-letters '(#\y #\c #\b)) ; #\d ; notice the letters overflowing
(add-letters '()) ; #\z
|#

#lang racket

(provide add-letters)

(define (add-letters letters)
  (define sum
    (foldl (lambda (c res) (+ res (- (char->integer c) 96))) 25 letters))
  (integer->char (+ (remainder sum 26) 97)))