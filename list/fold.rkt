#lang racket

(define (fold num func list)
  (cond
    [(empty? list) num]
    [else (fold (func num (first list)) func (rest list))]))

(displayln "(fold 10 - '(1 3 2))")
(fold 10 - (list 1 3 2))
