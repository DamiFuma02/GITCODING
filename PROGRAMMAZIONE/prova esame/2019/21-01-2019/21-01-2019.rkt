;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 21-01-2019) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;ESERCIZIO 1.a
;se y = 1, f(x y) = 2^x
;se x = 1, f(x y) = 2
;se x = 2y allora (f 2 1) + y-1
(define f ; val: intero
    (lambda (x y) ; x ≥ 0, y > 0 interi
        (if (< x y)
            1 ;CASO BASE 
            (+
                (f (- x 1) y)
                (f (- x y) y)
            )
        )
    )
)



;ESERCIZIO 1.b
;se y = 0, (f x 0)  = 2^x
;se x = y, (f x y) = 1
;se y = 1, f(x 1) = fibonacci(x-2)
;se x = y+1, f(x y) = 2
(define f2      ; val: intero
     (lambda (x y)    ; x, y: interi non negativi
           (if (<= x y)
               1
               (+ (f2 (- x (+ y 1)) y) (f2 (- x 1) y))
           )
      )
)



;ESERCIZIO 2.a
(define palindrome-lev    ;valore intero : numero di coppie uguali simmetriche
  (lambda (s)    ;s: stringa
    (let ( (l (- (string-length s) 1))   ;ultimo indice
         )
         (cond (   (string=? s "")
                   0 
               )
               ( (= l 0)    ;stringa di 1 elemento
                 1
               )
               (   (char=? (string-ref s 0) (string-ref s l))
                   (+ 1
                       (palindrome-lev
                          (substring s 1 l) ;toglie il primo e l'ultimo char
                       )
                   )
               ) 
               (else ;caratteri diversi
                    0
               )
         )
    )
  )
)

;ESERCIZIO 2.b

(define palindrome?     ;val: booleano
  (lambda (s)           ;s: STRINGA
       (let ( (l (- (string-length s) 1))  ;utlima posizione di s
            )
          (cond (  (or (string=? s "") (= l 0))
                    #true
                )
                (  (char=? (string-ref s 0) (string-ref s l))
                   (palindrome? (substring s 1 l))
                )
                (else
                   #false
                )
          )
       )
  )
)


;ESERCIZIO 3

(define stars             ;conta il numero di "*" in q
        (lambda (q)       ;q; STRINGA
            (if (string=? q "")
                0
                (let (   (n (stars (substring q 1)))
                     )
                     (if (char=? (string-ref q 0) #\*)
                         (+ n 1)
                         ;se non trova "*"
                         n
                     )
                )
            )
        )
)


(define better   ;restituisce la stringa con più "*", cioè con più caratteri comuni
      (lambda (u v)
           (if (< (stars u) (stars v))
               v
               u
           )
      )
)


(define xlcs
     (lambda (s t)
         (cond (  (string=? s "")
                  ;caratteri restanti non comuni da esprimere in chiaro
                  t
               )
               (  (string=? t "")
                  ;se S ha un carattere diverso dal primo della LCS
                  (string-append
                       "/"           ;TOGLIE IL PRIMO CARATTERE DI S
                       (xlcs (substring s 1) t)
                  )
               )
               (   (char=? (string-ref s 0) (string-ref t 0))
                   ;controlla i primi caratteri
                   (string-append
                         "*"
                         ;toglie il primo carattere da entrambe le stringhe
                         (xlcs (substring s 1) (substring t 1))
                   )
               )
               (else   
                    (better (string-append "/" ;caratteri da rimuovere da S
                                           (xlcs (substring s 1) t)
                            )
                            (string-append (substring t 0 1) ;caratteri da rimuovere da T
                                           (xlcs s (substring t 1))
                            )
                    )
               )
          )
      )
)


;ESERCIZIO 4 SU PDF



;ESERCIZIO 5






