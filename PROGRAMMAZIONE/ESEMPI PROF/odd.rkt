;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname odd) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define odd   ;restituisce il x-esimo numero dispari
  (lambda (x)
       (if (= x 1)
           1
           (+ (odd (- x 1)) 2)
        )
   )
)

;restituisce il quadrato di un numero intero
(define unknown
  (lambda (x)
       (if (= x 0)
           0
           (+ (unknown (- x 1)) (odd x) )
       )    
  )
)


(define mul
  (lambda (m n)
    (mul-tr m n 0)
  )
)


(define mul-tr        ; m*n + p
  (lambda (m n p)
    (cond ((= n 0) p )
          ((even? n)  (mul-tr (* 2 m) (quotient n 2) p))
          (else (mul-tr (* 2 m) (quotient n 2) (+ m p)))
     )
  )  
)