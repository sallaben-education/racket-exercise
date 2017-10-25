#lang racket

;list indexof
(define (indexof obj1 list1)
  (cond
    [(equal? obj1 (first list1)) 0]
    [(empty? (rest list1)) -1]
    [else (cond
            [(equal? (indexof obj1 (rest list1)) -1) -1]
            [else (add1 (indexof obj1 (rest list1)))])]))

(displayln "indexof 3 '(1 2 3 4 5)")
(indexof 3 (list 1 2 3 4 5))

(displayln "indexof 6 '(1 2 3 4 5)")
(indexof 6 (list 1 2 3 4 5))

