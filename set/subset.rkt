#lang racket

;set subset
(define (subset? set1 set2)
  (cond
    [(empty? set1) #t]
    [(member (first set1) set2) (subset? (rest set1) set2)]
    [else #f]))

(displayln "(subset? '(1 2) '(1 2 3 4))")
(subset? (list 1 2) (list 1 2 3 4))
