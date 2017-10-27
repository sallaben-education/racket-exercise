#lang racket

(define (absval num1)
  (cond
    [(negative? num1) (* num1 -1)]
    [else num1]))

(displayln "absval -3.5")
(absval -3.5)

(displayln "absval 9")
(absval 9)
