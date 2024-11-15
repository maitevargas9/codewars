#|
Description

Get ASCII value of a character.

For the ASCII table you can refer to http://www.asciitable.com/
|#

#lang racket

(provide get-ascii)

(define (get-ascii char)
  (char->integer char))