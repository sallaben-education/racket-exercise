#lang racket

;math nth-fibo
(define (nth-fibo num1)
  (cond
    [(equal? num1 1) 1]
    [(equal? num1 2) 1]
    [else (+ (nth-fibo (- num1 1)) (nth-fibo (- num1 2)))]))

(displayln "nth-fibo 6")
(nth-fibo 6)

(displayln "nth-fibo 10")
(nth-fibo 10)
