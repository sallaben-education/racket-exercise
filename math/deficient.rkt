#lang racket

(define (deficient? num)
  (cond
    [(< (divsum num (- num 1)) num) #t]
    [else #f]))

(define (divsum compare current)
  (cond
    [(equal? current 1) 1]
    [(equal? (modulo compare current) 0) (+ current (divsum compare (- current 1)))]
    [else (divsum compare (- current 1))]))

(displayln "deficient? 5")
(deficient? 5)

(displayln "deficient? 12")
(deficient? 12)
