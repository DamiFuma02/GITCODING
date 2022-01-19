;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 11-06-18) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))



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
                               (if (and (> x k) (> x n) )
                                     false
                                     
                               )
                        )
                     )
                  ) 
                 (else
                       (sieve (+ k 1) n
                              XXXX ; funzione
                       )
                 )
            )
       )
)


(define eratosthenes
    (lambda (n)
         (sieve 2 n
               (lambda (n) ;val:  booleano
               )
         )
    )
)


(define primes-list
    (lambda (n)
        (primes-rec 2 n (eratosthenes n))
    )
)