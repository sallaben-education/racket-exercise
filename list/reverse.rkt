#lang racket

;list reverse
(define (reverse list1)
  (cond
    [(empty? list1) empty]
    [else (append (reverse (rest list1)) (list (first list1)))]))

(displayln "reverse '(1 2 3 4 5)")
(reverse (list 1 2 3 4 5))
