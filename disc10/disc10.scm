(define (vir-fib n)
    (if (< n 2) n (+ (vir-fib (- n 1)) (vir-fib (- n 2))))
)

(expect (vir-fib 10) 55)
(expect (vir-fib 1) 1)

(define with-list
    (list (list 1 2) 3 4 (list 5))
)
(draw with-list)

(define with-quote
    '(
        (1 2) 3 4 (5)
    )

)
(draw with-quote)

(define helpful-list
   (cons 'a (cons 'b nil)))
(draw helpful-list)

(define another-helpful-list
    (cons 'c (cons 'd (cons (cons 'e nil) nil))))
(draw another-helpful-list)

(define with-cons
    (cons helpful-list another-helpful-list
    )
)
(draw with-cons)


(define (list-concat a b)
    (if (and (null? a) (null? b)) nil (if (null? a) (cons (car b) (list-concat a (cdr b))) (cons (car a) (list-concat (cdr a) b))))
)

(expect (list-concat '(1 2 3) '(2 3 4)) (1 2 3 2 3 4))
(expect (list-concat '(3) '(2 1 0)) (3 2 1 0))


(define (map-fn fn lst)
    (if (null? lst) nil (cons (fn (car lst)) (map-fn fn (cdr lst))))
)

(map-fn (lambda (x) (* x x)) '(1 2 3))
; expect (1 4 9)


(define (remove item lst)
    (if (null? lst) nil (if (= (car lst) item) (remove item (cdr lst)) (cons (car lst) (remove item (cdr lst)))))
)

(expect (remove 3 nil) ())
(expect (remove 2 '(1 3 2)) (1 3))
(expect (remove 1 '(1 3 2)) (3 2))
(expect (remove 42 '(1 3 2)) (1 3 2))
(expect (remove 3 '(1 3 3 7)) (1 7))