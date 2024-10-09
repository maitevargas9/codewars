#|
Description

Write a function that checks if a given string (case insensitive) is a palindrome.

A palindrome is a word, number, phrase, or other sequence of symbols that reads the same backwards as 
forwards, such as madam or racecar.
|#

#lang racket

(provide palindrome?)

(define (palindrome? word)
  (define l (string->list (string-downcase word)))
  (equal? l (reverse l)))