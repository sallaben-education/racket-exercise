#lang racket

;list nub
(define (nub list1)
  (cond
    [(empty? list1) empty]
    [(member (first list1) (rest list1)) (nub (rest list1))]
    [else (cons (first list1) (nub (rest list1)))]))

(displayln "nub '(1 2 3 4 4 3 2 1 1 2 3 4)")
(nub (list 1 2 3 4 4 3 2 1 1 2 3 4))
