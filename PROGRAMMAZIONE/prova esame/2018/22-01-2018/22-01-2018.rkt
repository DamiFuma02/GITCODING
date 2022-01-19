;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 22-01-2018) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))

;ESERCIZIO 1

(define powers-of-two    ;restituisce la lista contenente le potenze di 2
  ;;in ordine decrescente che sommate danno origine a n
  (lambda (n)     ;n: INTERO >= 0
     (cond ( (= n 0)   ;CASO BASE
             null
           )
           ( (= n 1)   
             (list 1)
           )
           (else
             (let ( (lg (inexact->exact 
                          (floor (/ (log n) (log 2)) ) 
                        )
                     )  ;Log2(n) : approssimato difetto INTERO
                  ) 
                  (cons (expt 2 lg) ;(potenza di 2) < n più vicina a n stesso
                        (powers-of-two (- n (expt 2 lg))) ; n - (potenza di 2) 
                  )
              )
           )
     )
  )
)

(define manhattan-var ; val: intero
     (lambda (i j k) ; i, j, k: interi non negativi tali che k ≤ i e k ≤ j
           (let (  (x (if (= i k)
                          0
                          (manhattan-var (- i 1) j k)
                       )
                   )
                   (y (if (= j k)
                          0
                          (manhattan-var i (- j 1) k)
                       )
                   )
                   (z (if (= k 0)
                          0
                          (manhattan-var i j (- k 1))
                      )
                   ) 
                )
                (if (and (> i 0) (> j 0))
                     (+ x
                        y
                     )
                     ;almeno una delle 2 coordinate = 0, perciò 1 solo percorso disponibile ma non in diagonale
                     0
                )
           )
    )
)
