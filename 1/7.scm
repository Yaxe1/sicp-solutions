; "Limited precision" in this context means that we are using a finite amount of 
; bits to represent a real number with a potentially infinite decimal 
; representation. IEEE floating point arithmetic is defined as real-number 
; arithmetic truncated to the closest representable float, introducing errors in 
; calculations.

(define (square x) (* x x))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define epsilon 1e-10)
(define (good-enough? guess x)
    (< (abs (- guess (improve guess x)))
        (* guess epsilon)))

(define (sqrt x)
    (sqrt-iter 1.0 x))