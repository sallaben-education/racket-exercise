#lang racket

;set cardinality
(define (cardinality set1)
  (cond
    [(empty? set1) 0]
    [else (+ (cardinality (rest set1)) 1)]))

(displayln "(cardinality '(1 2 3))")
(cardinality (list 1 2 3))
