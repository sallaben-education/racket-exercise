#lang racket

(define (superset? set1 set2)
  (cond
    [(empty? set2) #t]
    [(member (first set2) set1) (superset? set1 (rest set2))]
    [else #f]))

(displayln "(superset? '(1 2 3 4) '(1 2))")
(superset? (list 1 2 3 4) (list 1 2))
