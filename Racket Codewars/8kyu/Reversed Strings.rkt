#|
Description

Complete the solution so that it reverses the string passed into it.

'world'  =>  'dlrow'
'word'   =>  'drow'
|#

#lang racket
(provide solution)

(define (solution string)
  (list->string (reverse (string->list string))))