#lang racket

;math right-tri
(define (right-tri side1 side2 hyp1)
  (cond
    [(equal? hyp1 (sqrt (+ (expt side1 2) (expt side2 2)))) #t]
    [else #f]))

(displayln "right-tri 3 4 5")
(right-tri 3 4 5)

(displayln "right-tri 1 2 3")
(right-tri 1 2 3)
