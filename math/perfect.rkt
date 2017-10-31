#lang racket

;int perfect
(define (perfect? num)
  (cond
    [(equal? (divsum num (- num 1)) num) #t]
    [else #f]))

(define (divsum compare current)
  (cond
    [(equal? current 1) 1]
    [(equal? (modulo compare current) 0) (+ current (divsum compare (- current 1)))]
    [else (divsum compare (- current 1))]))

(displayln "perfect? 5")
(perfect? 5)

(displayln "perfect? 6")
(perfect? 6)

(displayln "perfect? 8128")
(perfect? 8128)
