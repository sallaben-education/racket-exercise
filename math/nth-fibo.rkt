#lang racket

(define (nth-fibo num)
  (cond
    [(equal? num 1) 1]
    [(equal? num 2) 1]
    [else (+ (nth-fibo (- num 1)) (nth-fibo (- num 2)))]))

(displayln "nth-fibo 6")
(nth-fibo 6)

(displayln "nth-fibo 10")
(nth-fibo 10)
