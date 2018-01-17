(define (display-question q)
  (if (null? q) (newline)
      (begin (display (car q)) (newline) (display-question (cdr q)))))
      
(define (display-lemma txt val)
  (begin
    (display txt)
    (display val)
    (newline)))
