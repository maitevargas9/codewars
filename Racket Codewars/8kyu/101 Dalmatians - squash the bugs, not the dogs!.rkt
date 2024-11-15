#|
Description

Your friend has been out shopping for puppies (what a time to be alive!)... He arrives back with 
multiple dogs, and you simply do not know how to respond!

By repairing the function provided, you will find out exactly how you should respond, depending on 
the number of dogs he has.

The number of dogs will always be a number and there will always be at least 1 dog.

Good luck!

#lang racket

(provide how-many-dalmatians

(define how-many-dalmatians (numer :  
  (define dogs '("Hardly any"
                 "More than a handful!"
                 "Woah that's a lot of dogs!"
                 "101 DALMATIONS!!!"))
  
  (if (<= number 10) (list-reg dogs 0
                           (number <= 50  listref dogs 1
                                   (number = 101  listref dogs 3
|#

#lang racket

(provide how-many-dalmatians)

(define (how-many-dalmatians number)
  (cond
    [(<= number 10) "Hardly any"]
    [(<= number 50) "More than a handful!"]
    [(= number 101) "101 DALMATIANS!!!"]
    [else "Woah that's a lot of dogs!"]))