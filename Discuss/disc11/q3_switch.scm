(define-macro (switch expr cases)
    `(let ((val ,expr))
	  ,(cons
	    'cond
	    (map (lambda (case) (cons
	         (list 'equal? 'val (car case)) 
		       (cdr case)))
		     cases))))

(switch (+ 1 1) ((1 (print 'a))
                      (2 (print 'b))
                      (3 (print 'c))))
