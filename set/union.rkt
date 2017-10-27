#lang racket

;set union
(define (union set1 set2)
  (cond
    [(empty? set2) set1]
    [else (cond
            [(member (first set2) set1) (union set1 (rest set2))]
            [else (union (insert (first set2) set1) (rest set2))])]))

(displayln "union '(1 2) '(2 3 4 1 5)")
(union (list 1 2) (list 2 3 4 1 5))
