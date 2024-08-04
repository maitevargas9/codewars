#|
Description

Given a string, capitalize the letters that occupy even indexes and odd indexes separately, and return as shown below. 
Index 0 will be considered even.

For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

The input will be a lowercase string with no spaces.

Good luck!
|#

#lang racket

(provide solve)

(define (solve s)
  (list
   (list->string (for/list ([c s]
                            [i (in-range (string-length s))])
                            (if (even? i)
                                (char-upcase c)
                                (char-downcase c))))
   (list->string (for/list ([c s]
                            [i (in-range (string-length s))])
                            (if (odd? i)
                                (char-upcase c)
                                (char-downcase c))))))