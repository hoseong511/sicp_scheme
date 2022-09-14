(define (fast-mul x n)
	(define (even? n)
		(= (remainder n 2) 0))
	(define (double a)
		(+ a a))
	(define (fast-mul-iter x n result)
		(display n)
		(newline)
		(cond	((= n 0) result)
				((even? n) (fast-mul-iter (double x) (/ n 2) result))
				(else (fast-mul-iter x (- n 1) (+ result x)))))
	(fast-mul-iter x n 0))