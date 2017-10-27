#lang racket

;set insert
(define (insert obj1 set1)
  (cond
    [(empty? set1) (cons obj1 empty)]
    [(member obj1 set1) set1]
    [else (cons (first set1) (insert obj1 (rest set1)))]))

(displayln "insert 7 '(1 2 3)")
(insert 7 (list 1 2 3))

(displayln "insert 2 '(1 2 3)")
(insert 2 (list 1 2 3))
