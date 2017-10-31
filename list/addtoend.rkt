#lang racket

;list addtoend
(define (addtoend element list1)
  (cond
    [(empty? list1) (list element)]
    [else (reverse (cons element (reverse list1)))]))

(displayln "addtoend 7 '(1 2 3 4)")
(addtoend 7 (list 1 2 3 4))
