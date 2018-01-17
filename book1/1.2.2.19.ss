(load "../util.ss")

(define q
  '("If n is an integer whose decimal representation is 14 digits long, "
    "will the value of n fit in a computer word with a capacity of 47 bits "
    "and a sign bit?"))

(define (pow2 n)
  (define (pow2-helper n acc)
    (if (= n 0) acc (pow2-helper (sub1 n) (* 2 acc))))
  (pow2-helper n 1))

(define (int->digits n)
  (let ((base 10))
    (define (int->digits-helper n ans)
      (let ((rem (remainder n base)))
	(cond ((< (/ n base) 1) (cons rem ans))
	      (else (int->digits-helper
		     (floor (/ n base)) (cons rem ans))))))
    (int->digits-helper n '())))

(display-question q)

(display-lemma "(pow2 47) = " (pow2 47))

(display-lemma
 "(length (int->digits (pow2 47))) = "
 (length (int->digits (pow2 47))))

(display-lemma "(< 14 15) = " (< 14 (length (int->digits (pow2 47)))))

(exit)
