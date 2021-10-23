;; ex 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; ex 1.3
(define (>? a b)
  (if (> a b) a b))

(define (soq a b)
  (+ (* a a) (* b b)))

(define (three-square a b c)
  (soq (>? a b) (>? a c)))
