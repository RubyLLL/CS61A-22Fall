(define (my-filter pred s) (if (null? s) s (if (pred (car s)) (cons (car s) (my-filter pred (cdr s))) (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) 
  (if (and (null? lst1) (null? lst2)) 
  nil 
  (if (null? lst1) 
  (cons (car lst2) (interleave (cdr lst2) lst1)) 
  (cons (car lst1) (interleave lst2 (cdr lst1))))
  )
)

(define (accumulate joiner start n term)
  (if (= n 0) 
  (if (= (joiner 1 1) 1) 1 0)
  (joiner (joiner (term n) (accumulate joiner (if (= (joiner 1 1) 1) 1 0) (- n 1) term)) start)
))



(define (no-repeats lst) 
  (if (null? lst) 
  nil 
  (cons (car lst) (no-repeats (my-filter (lambda (x) (not (= x (car lst)))) (cdr lst))))))

