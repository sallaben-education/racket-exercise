#lang racket

;list fold
(define (fold num func list1)
  (cond
    [(empty? list1) num]
    [else (fold (func num (first list1)) func (rest list1))]))

(displayln "(fold 10 - '(1 3 2))")
(fold 10 - (list 1 3 2))
