#lang sicp

(#%require rackunit)

(define (sum-of-two-largest a b c)
  (define (sum-of-squares a b) (+ (* a a) (* b b)))
  (cond ((and (< c a) (< c b)) (sum-of-squares a b))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares b c))))

(check-equal? (sum-of-two-largest 1 2 3) (+ (* 2 2) (* 3 3)) "1 2 3; choose 2 3")
(check-equal? (sum-of-two-largest 3 2 1) (+ (* 2 2) (* 3 3)) "3 2 1; choose 2 3")
(check-equal? (sum-of-two-largest 4 1 (- 2)) (+ (* 1 1) (* 4 4)) "4 1 -2; choose 1 4")