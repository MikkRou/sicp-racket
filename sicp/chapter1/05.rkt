#lang sicp

(#%require rackunit)

; Normal-order evaluation: fully expand and then reduce.
; Applicative-order evaluation: evaluate the arguments and then apply.

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; normal-order
; (if (= 0 0)
;     0
;     (p))
; (p) will recursively call (p)

; applicative-order
; (if (= 0 0)
;     0
;     (p))
; 0

(check-equal? (test 0 (p)) 0)
(check-equal? (test (p) "y") "y")