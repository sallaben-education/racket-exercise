#lang racket

(define (abundant? num)
  (cond
    [(> (divsum num (- num 1)) num) #t]
    [else #f]))

(define (divsum compare current)
  (cond
    [(equal? current 1) 1]
    [(equal? (modulo compare current) 0) (+ current (divsum compare (- current 1)))]
    [else (divsum compare (- current 1))]))

(displayln "abundant? 5")
(abundant? 5)

(displayln "abundant? 12")
(abundant? 12)