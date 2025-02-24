(define (ascending? s) 
    (if (null? s) #t (if (null? (cdr s)) #t (and (<= (car s) (car (cdr s))) (ascending? (cdr s))))))

(define (my-filter pred s) 
    (if (null? s) s (if (pred (car s)) (cons (car s) (my-filter pred (cdr s))) (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) 
    (if (null? lst1) lst2
        (if (null? lst2) lst1
        (cons (car lst1) (interleave lst2 (cdr lst1))))))

(define (no-repeats-helper lst1 lst2)
    (if (null? lst2) lst1
    (if (null? (filter (lambda (x) (= x (car lst2))) lst1)) (no-repeats-helper (append lst1 (cons (car lst2) nil)) (cdr lst2))
    (no-repeats-helper lst1 (cdr lst2)))))

(define (no-repeats s) 
    (no-repeats-helper () s))
