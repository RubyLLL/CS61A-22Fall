;(define (over-or-under num1 num2) (if (< num1 num2) -1 (if (> num1 num2) 1 0)))
(define (over-or-under num1 num2) 
    (cond
        ((> num1 num2) 1)
        ((< num1 num2) -1)
        (else 0))
    )
(define (make-adder num) (lambda (inc) (+ inc num)))

(define (composed f g) (lambda (x) (f (g x))))

(define lst (cons '(1) (cons 2 (cons (list 3 4) (cons 5 nil)))))

(define (duplicate lst) (if (= (length lst) 0) nil (cons (car lst) (cons (car lst) (duplicate (cdr lst))))))

