;; ex 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; ex 1.3
(define (>? a b)
  (if (> a b) a b))

(define (soq a b)
  (+ (* a a) (* b b)))

(define (three-square a b c)
  (soq (>? a b) (>? a c)))

;; ex 1.7

(define (sqrt-iter guess x)
  (if (better-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (better-enough? guess new-guess)
  (< (/ (abs (- guess new-guess)) guess) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; ex 1.8

(define (sqb-iter guess x)
  (if (better-enough? guess (improve-sqb guess x))
      guess
      (sqb-iter (improve-sqb guess x) x)))

(define (improve-sqb y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (sqb x)
  (sqb-iter 1.0 x))

;; ex 1.11

(define (f-f n-3 n-2 n-1)
  (+ (* 3 n-3) (* 2 n-2) n-1))

(define (f-rec n)
  (cond
   ((< n 3) n)
   (else (f-f (f-rec (- n 3))
              (f-rec (- n 2))
              (f-rec (- n 1))))))

(define (f-in n-3 n-2 n-1 count)
  (cond
   ((= count 0) n-1)
   (else (f-in n-2 n-1 (f-f n-3 n-2 n-1) (- count 1)))))

(define (f-iter n) n
  (cond
   ((< n 3) n)
   (else (f-in 0 1 2 (- n 2)))))
