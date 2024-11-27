#|
Description

You will be given an array a and a value x. All you need to do is check whether the provided array 
contains the value.

a can contain numbers or strings. x can be either.

In racket, you'll be given a list instead of an array. If the value is in the list, return #t instead 
of another value that is also considered true.

(contains '(1 2 3) 3) ; returns #t
(contains '(1 2 3) 5) ; returns #f

Return true if the array contains the value, false if not.
|#

#lang racket

(provide contains)

(define (contains lst item)
  (if (member item lst)
      #t
      #f))