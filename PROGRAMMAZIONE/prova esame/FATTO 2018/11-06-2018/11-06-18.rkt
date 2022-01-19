;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 11-06-18) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))

;ESERCIZIO 1 11-06-2018
;LISTA DI TUTTI I NUMERI PRIMI FINO A N
;(primes-rec 20)

(define primes-rec
      (lambda (k n prime?)
           (cond (  (> k n)  ;k ha superato il limite di ricerca, torna null perchè non è considerato PRIMO
                    null
                 )
                 (  (prime? k)  ; k = numero PRIMO
                    (cons k
                          (primes-rec (+ k 1) n prime?) ;incrementa il numero da cercare
                    )
                 )
                 (  else
                      (primes-rec (+ k 1) n prime?)   ;continua a cercare
                 )
            ) 
       )
)

(define sieve
       (lambda (k n p?)
           (cond (  (> k n)
                    p?
                 )
                 (  (p? k)   ;chiama la funzione lambda (x)
                    (sieve (+ k 1) n
                         ;P? 
                        (lambda (x)    ;argomento INTERO
                               (if (and (> x k) (= (remainder x k) 0) )
                                     #false
                                     (p? x)
                               )
                        )
                     )
                  ) 
                 (else
                       (sieve (+ k 1) n
                              p? ; funzione
                       )
                 )
            )
       )
)


(define eratosthenes
    (lambda (n)
         (sieve 2 n
               (lambda (x) true  )      ;val:  booleano)
         )
    )
)


(define primes-list
    (lambda (n)
        (primes-rec 2 n (eratosthenes n))
    )
)


;; trovare quali sono i numeri primi in un intervallo

(define ha-divisori-fra?
  (lambda (x y n)
    (cond((> x y) false)     ;;intervallo di numeri vuoto
         ((= (remainder n x) 0) true)
         (else
          (ha-divisori-fra? (+ x 1) y n))
    )
))

(define primo?
  (lambda (n)
    (not (ha-divisori-fra? 2 (- n 1) n))
  ))

;TUTTI I NUMERI PRIMI NELL INTERVALLO [X, Y]
(define primi
  (lambda (x y)
    (cond ((> x y)
           null)
          ((primo? x)
           (cons x (primi (+ x 1) y)))
          (else
           (primi (+ x 1) y))
          )
    ))