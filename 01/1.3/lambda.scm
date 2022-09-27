(define (sum term a next b)
	(define (iter a result)
		(if (> a b)
			result)
			(iter (next a) (+ result (term a))))
	(iter a 0))

(define (pi-sum a b)
	(sum (lambda (x) (/ 1.0 (* x (+ x 2))))
		 a
		 (lambda (x) (+ x 4))
		 b))

(define (integral f a b dx)
	(* (sum f
			(+ a (/ dx 2.0))
			)))