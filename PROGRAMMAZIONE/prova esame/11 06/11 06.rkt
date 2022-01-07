;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |11 06|) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks") (lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks") (lib "drawings.ss" "installed-teachpacks")) #f)))
(define prime-list   ;restituisce tutti i numeri primi da 2 a n escluso
  (lambda (n)
    (primes-rec 2 n (eratostene n))
  )
)

;toglie tutti i multipli di k
(define primes-rec
  (lambda (k n prime?)
    (cond ((> k n)
           null
          )
          ((prime? k)
             (cons k (primes-rec (+ k 1) n prime?))
          )
          (else
             (primes-rec (+ k 1) n prime?)
          )
    )
  )
)


(define eratostene
   (lambda (n)
     (sieve 2 n xxxxxx)
   )
)


(define sieve
    (lambda (k n p?)
          (cond ((> k n)
                   p?
                )
                ((p? k)
                   (sieve (+ k 1) n
                          (lambda (x)
                              (if (and (> x k) (xxxxxxx))
                                  #false
                                  xxxxxxx
                              )
                          )
                   )
                )
                (else
                   (sieve (+ k 1) n xxxxxx)
                )
          )
    )
)