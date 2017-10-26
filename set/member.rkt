#lang racket

;set member
(define (member obj1 set1)
  (cond
    [(empty? set1) #f]
    [(equal? obj1 (first set1)) #t]
    [else (member obj1 (rest set1))]))

(displayln "member 3 '(1 2 3 4 5)")
(member 3 (list 1 2 3 4 5))

(displayln "member 6 '(1 2 3)")
(member 6 (list 1 2 3))

(displayln "member 1 '()")
(member 1 empty)
