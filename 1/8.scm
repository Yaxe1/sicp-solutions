(define (square x) (* x x))

(define (cube-root x)
    (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))

; From exercise 1.7
(define epsilon 1e-20)
(define (good-enough? guess x)
    (< (abs (- guess (improve guess x)))
        (* guess epsilon)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))