#|
Description

For every good kata idea there seem to be quite a few bad ones!

In this kata you need to check the provided 2 dimensional array (x) for good ideas 'good' and bad 
ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there are more than 2 return 
'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.

The sub arrays may not be the same length.

The solution should be case insensitive (ie good, GOOD and gOOd all count as a good idea). All inputs 
may not be strings.
|#

#lang racket

(provide well)

(define (well ideas)
  (let* ([good? (lambda (idea) (if (string? idea)
                                  (equal? "good" (string-downcase idea))
                                  #f))])
    (case (length (filter good? (flatten ideas)))
          [(0) "Fail!"]
          [(1 2) "Publish!"]
          [else "I smell a series!"])))