#lang racket

;*************
;SET FUNCTIONS
;*************

(displayln "*************")
(displayln "SET FUNCTIONS")
(displayln "*************")

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

;set insert
(define (insert obj1 set1)
  (cond
    [(empty? set1) (cons obj1 empty)]
    [(member obj1 set1) set1]
    [else (cons (first set1) (insert obj1 (rest set1)))]))

(displayln "insert 7 '(1 2 3)")
(insert 7 (list 1 2 3))

(displayln "insert 2 '(1 2 3)")
(insert 2 (list 1 2 3))

;set union
(define (union set1 set2)
  (cond
    [(empty? set2) set1]
    [else (cond
            [(member (first set2) set1) (union set1 (rest set2))]
            [else (union (insert (first set2) set1) (rest set2))])]))

(displayln "union '(1 2) '(2 3 4 1 5)")
(union (list 1 2) (list 2 3 4 1 5))

(displayln "union '(1 2) '()")
(union (list 1 2) empty)

;set subset
(define (subset? set1 set2)
  (cond
    [(empty? set1) #t]
    [(member (first set1) set2) (subset? (rest set1) set2)]
    [else #f]))

(displayln "(subset? '(1 2) '(1 2 3 4))")
(subset? (list 1 2) (list 1 2 3 4))

(displayln "(subset? '(1 3) '(1 2 4 5))")
(subset? (list 1 3) (list 1 2 4 5))

;set superset
(define (superset? set1 set2)
  (cond
    [(empty? set2) #t]
    [(member (first set2) set1) (superset? set1 (rest set2))]
    [else #f]))

(displayln "(superset? '(1 2 3 4) '(1 2))")
(superset? (list 1 2 3 4) (list 1 2))

(displayln "(superset? '(1 3 4 5) '(1 2))")
(superset? (list 1 3 4 5) (list 1 2))

;set cardinality
(define (cardinality set1)
  (cond
    [(empty? set1) 0]
    [else (+ (cardinality (rest set1)) 1)]))

(displayln "(cardinality '(1 2 3))")
(cardinality (list 1 2 3))

(displayln "(cardinality '())")
(cardinality empty)

;**************
;LIST FUNCTIONS
;**************

(displayln "")
(displayln "**************")
(displayln "LIST FUNCTIONS")
(displayln "**************")

;list append
(define (append list1 list2)
  (cond
    [(empty? list1) list2]
    [(empty? (rest list1)) (cons (first list1) list2)]
    [else (cons (first list1) (append (rest list1) list2))]))

(displayln "append '(1 2) '(3 4 5)")
(append (list 1 2) (list 3 4 5))

;list reverse
(define (reverse list1)
  (cond
    [(empty? list1) empty]
    [else (append (reverse (rest list1)) (list (first list1)))]))

(displayln "reverse '(1 2 3 4 5)")
(reverse (list 1 2 3 4 5))

;list addtoend
(define (addtoend element list1)
  (cond
    [(empty? list1) (list element)]
    [else (reverse (cons element (reverse list1)))]))

(displayln "addtoend 7 '(1 2 3 4)")
(addtoend 7 (list 1 2 3 4))

;list fold
(define (fold num func list1)
  (cond
    [(empty? list1) num]
    [else (fold (func num (first list1)) func (rest list1))]))

(displayln "(fold 10 - '(1 3 2))")
(fold 10 - (list 1 3 2))

;list nub
(define (nub list1)
  (cond
    [(empty? list1) empty]
    [(member (first list1) (rest list1)) (nub (rest list1))]
    [else (cons (first list1) (nub (rest list1)))]))

(displayln "nub '(1 2 3 4 4 3 2 1 1 2 3 4)")
(nub (list 1 2 3 4 4 3 2 1 1 2 3 4))

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

;**************
;MATH FUNCTIONS
;**************

(displayln "")
(displayln "**************")
(displayln "MATH FUNCTIONS")
(displayln "**************")

;math factorial
(define (factorial num1)
  (cond
    [(equal? num1 0) 1]
    [else (* (factorial (- num1 1)) num1)]))

(displayln "factorial 5")
(factorial 5)

(displayln "factorial 0")
(factorial 0)

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

;math right-tri
(define (right-tri side1 side2 hyp1)
  (cond
    [(equal? hyp1 (sqrt (+ (expt side1 2) (expt side2 2)))) #t]
    [else #f]))

(displayln "right-tri 3 4 5")
(right-tri 3 4 5)

(displayln "right-tri 1 2 3")
(right-tri 1 2 3)

;math absval
(define (absval num1)
  (cond
    [(negative? num1) (* num1 -1)]
    [else num1]))

(displayln "absval -3.5")
(absval -3.5)

(displayln "absval 9")
(absval 9)

;*************
;INT FUNCTIONS
;*************

(displayln "")
(displayln "*************")
(displayln "INT FUNCTIONS")
(displayln "*************")

;sum of int divisors/factors
(define (divsum compare current)
  (cond
    [(equal? current 1) 1]
    [(equal? (modulo compare current) 0) (+ current (divsum compare (- current 1)))]
    [else (divsum compare (- current 1))]))

;int perfect
(define (perfect? num)
  (cond
    [(equal? (divsum num (- num 1)) num) #t]
    [else #f]))

(displayln "perfect? 5")
(perfect? 5)

(displayln "perfect? 6")
(perfect? 6)

(displayln "perfect? 8128")
(perfect? 8128)

;int abundant
(define (abundant? num)
  (cond
    [(> (divsum num (- num 1)) num) #t]
    [else #f]))

(displayln "abundant? 5")
(abundant? 5)

(displayln "abundant? 12")
(abundant? 12)

;int deficient
(define (deficient? num)
  (cond
    [(< (divsum num (- num 1)) num) #t]
    [else #f]))

(displayln "deficient? 5")
(deficient? 5)

(displayln "deficient? 12")
(deficient? 12)

(displayln "")
(displayln "Execution complete!")
