#lang racket

(define (addtoend element list)
  (cond
    [(empty? list) (list element)]
    [else (reverse (cons element (reverse list)))]))

(displayln "addtoend 7 '(1 2 3 4)")
(addtoend 7 (list 1 2 3 4))
