#|
Description

Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. 
Return the resulting string.
Note: input will never be an empty string
|#

#lang racket

(provide fake-binary)

(define (fake-binary fake)
  (list->string 
   (map 
    (lambda (i) 
     (if (char<? i #\5) #\0 #\1)) 
    (string->list fake)))
)
