#|
Description

There was a test in your class and you passed it. Congratulations!

But you're an ambitious person. You want to know if you're better than the average student in your class.

You receive an array with your peers' test scores. Now calculate the average and compare your score!

Return #t if you're better, else #f.

Note:
Your points are not included in the array of your class's points. Do not forget them when calculating the average score!
|#

#lang racket

(provide better-than-average)

(define (better-than-average class-scores my-score)
  (define sum (apply + class-scores))
  (define avg (/ sum (length class-scores)))
  (> my-score avg))