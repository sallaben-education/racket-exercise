#lang racket

(define (nub list)
  (cond
    [(empty? list) empty]
    [(member (first list) (rest list)) (nub (rest list))]
    [else (cons (first list) (nub (rest list)))]))

(displayln "nub '(1 2 3 4 4 3 2 1 1 2 3 4)")
(nub (list 1 2 3 4 4 3 2 1 1 2 3 4))
