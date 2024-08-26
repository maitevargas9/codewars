#|
Description

For every good kata idea there seem to be quite a few bad ones!

In this kata you need to check the provided array (x) for good ideas 'good' and bad ideas 'bad'. 
If there are one or two good ideas, return 'Publish!', if there are more than 2 return 
'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.
|#

#lang racket

(provide well)

(define (well ideas)
  (case (length (filter (λ (idea) (equal? idea "good")) ideas))
    [(0) "Fail!"]
    [(1 2) "Publish!"]
    [else "I smell a series!"]))