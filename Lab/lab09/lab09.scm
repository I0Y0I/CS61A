(define (over-or-under num1 num2) 
  ; (if (< num1 num2) -1 (if (= num1 num2) 0 1)))
  (cond ((< num1 num2) -1)
        ((= num1 num2)  0)
        (else           1)))

(define (make-adder num) (lambda (x) (+ x num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) (lambda (x) (if (= n 0) x (f ((repeat f (- n 1)) x)))))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (let ((x (max a b)) (y (min a b)))
  (if (zero? (modulo x y)) y (gcd y (modulo x y)))))

