#lang racket

;math factorial
(define (factorial num1)
  (cond
    [(equal? num1 0) 1]
    [else (* (factorial (- num1 1)) num1)]))

(displayln "factorial 5")
(factorial 5)
