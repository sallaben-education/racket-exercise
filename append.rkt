#lang racket

;list append
(define (append list1 list2)
  (cond
    [(empty? list1) list2]
    [(empty? (rest list1)) (cons (first list1) list2)]
    [else (cons (first list1) (append (rest list1) list2))]))

(displayln "append '(1 2) and '(3 4 5)")
(append (list 1 2) (list 3 4 5))
