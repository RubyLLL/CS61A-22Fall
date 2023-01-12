(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ascending? asc-lst) 
    (if (< (length asc-lst) 2)
    #t 
    (if (< (cadr asc-lst) (car asc-lst))
    #f
    (ascending? (cdr asc-lst))))
)

(define (square n) (* n n))

(define (pow base exp) 
    (cond ((= exp 0) 1)
          ((even? exp) (square (pow base (/ exp 2))))
          ((odd? exp) (* base (square (pow base (/ (- exp 1) 2)))))))
