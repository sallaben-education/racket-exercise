#lang racket

(define (right-tri side1 side2 hyp)
  (cond
    [(equal? hyp (sqrt (+ (expt side1 2) (expt side2 2)))) #t]
    [else #f]))

(displayln "right-tri 3 4 5")
(right-tri 3 4 5)

(displayln "right-tri 1 2 3")
(right-tri 1 2 3)
