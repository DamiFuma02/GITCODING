;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname prova) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))



(define normalized-btr   ;rimuove gli 0 più significativi
   (lambda (str)
       (btr-rep    ;converte il valore decimale in stringa BTR per elimiare gli 0 più significativi
           (converti ;converte la stringa BTR in numero decimale
              str  
           )
      )
   )
)

(define btr-carry                    ; val:     carattere +/./-
  (lambda (u v c)                        ; u, v, c: caratteri +/./-
    (cond ((char=? u #\-)                ; u == -
           (cond ((char=? v #\-)
                  (cond ((char=? c #\-)  ; - - -
                         #\-)
                        ((char=? c #\.)  ; - - .
                         #\-)
                        ((char=? c #\+)  ; - - +
                         #\.)))
                 ((char=? v #\.)
                  (cond ((char=? c #\-)  ; - . -
                         #\-)
                        ((char=? c #\.)  ; - . .
                         #\.)
                        ((char=? c #\+)  ; - . +
                         #\.)))
                 ((char=? v #\+)         ; - + c
                  #\.)))
          ((char=? u #\.)
           (cond ((char=? v #\-)
                  (cond ((char=? c #\-)  ; . - -
                         #\-)
                        ((char=? c #\.)  ; . - .
                         #\.)
                        ((char=? c #\+)  ; . - +
                         #\.)))
                 ((char=? v #\.)         ; . . c
                  c)
                 ((char=? v #\+)
                  (cond ((char=? c #\-)  ; . + -
                         #\.)
                        ((char=? c #\.)  ; . + .
                         #\.)
                        ((char=? c #\+)  ; . + +
                         #\+)))))
          ((char=? u #\+)
           (cond ((char=? v #\-)         ; + - c
                  #\.)
                 ((char=? v #\.)
                  (cond ((char=? c #\-)  ; + . -
                         #\.)
                        ((char=? c #\.)  ; + . .
                         #\.)
                        ((char=? c #\+)  ; + . +
                         #\+)))
                 ((char=? v #\+)
                  (cond ((char=? c #\-)  ; + + -
                         #\.)
                        ((char=? c #\.)  ; + + .
                         #\+)
                        ((char=? c #\+)  ; + + +
                         #\+)))))
          )))

(define btr-digit-sum                    ; val:     carattere +/./-
  (lambda (u v c)                        ; u, v, c: caratteri +/./-
    (cond ((char=? u #\-)                ; u v c
           (cond ((char=? v #\-)
                  (cond ((char=? c #\-)  ; - - -
                         #\.)
                        ((char=? c #\.)  ; - - .
                         #\+)
                        ((char=? c #\+)  ; - - +
                         #\-)))
                 ((char=? v #\.)
                  (cond ((char=? c #\-)  ; - . -
                         #\+)
                        ((char=? c #\.)  ; - . .
                         #\-)
                        ((char=? c #\+)  ; - . +
                         #\.)))
                 ((char=? v #\+)         ; - + c
                  c)))
          ((char=? u #\.)
           (cond ((char=? v #\-)
                  (cond ((char=? c #\-)  ; . - -
                         #\+)
                        ((char=? c #\.)  ; . - .
                         #\-)
                        ((char=? c #\+)  ; . - +
                         #\.)))
                 ((char=? v #\.)         ; . . c
                  c)
                 ((char=? v #\+)
                  (cond ((char=? c #\-)  ; . + -
                         #\.)
                        ((char=? c #\.)  ; . + .
                         #\+)
                        ((char=? c #\+)  ; . + +
                         #\-)))))
          ((char=? u #\+)
           (cond ((char=? v #\-)         ; + - c
                  c)
                 ((char=? v #\.)
                  (cond ((char=? c #\-)  ; + . -
                         #\.)
                        ((char=? c #\.)  ; + . .
                         #\+)
                        ((char=? c #\+)  ; + . +
                         #\-)))
                 ((char=? v #\+)
                  (cond ((char=? c #\-)  ; + + -
                         #\+)
                        ((char=? c #\.)  ; + + .
                         #\-)
                        ((char=? c #\+)  ; + + +
                         #\.)))))
          )))

(define btr-sum
     (lambda (add1 add2)
        (let ((k1 (string-length add1)) (k2 (string-length add2)))
          (cond
            ((= k1 k2)
                   ;le due stringhe hanno la stessa lunghezza perciò si esegue la somma normalmente
                   (normalized-btr (somma add1 add2 "."))
            )
            ;se non sono uguali si aggiunge (kMag - Kmin) "." a SX della stringa più corta
            ((< k1 k2)     ; add2 < add1 perciò si allunga add2
                  (normalized-btr (somma (aggiungi add1 (- k2 k1)) add2 "."))
             )
            ((< k2 k1)  ; add2 < add1 perciò si allunga add2
                  (normalized-btr (somma (aggiungi add2 (- k1 k2)) add1 "."))
            )
          )
        )
     )
)

(define somma    ; fa la somma di due stringhe lunghe uguali
  (lambda (add1 add2 c)
           
          (let ((k1 (-(string-length add1)1)) (k2 (-(string-length add2)1)))
            (if (= k1 0)  ;sono rimasti 2 caratteri
                    (sum add1 add2 c)    ;quando k1 = 0 si è arrivati alla fine della somma 
                    (string-append (somma (substring add1 0 k1) (substring add2 0 k2) (substring (somma (substring add1 k1) (substring add2 k2) c) 0 1))
                                   (substring (somma (substring add1 k1) (substring add2 k2) c) 1)
                    )         
             ) 
          )       
   )
)


(define sum  ;restitusce una stringa "carry + somma"
  (lambda (a1 a2 c)
    (let ((add (btr-rep (+ (string-number a1) (string-number a2) (string-number c)) )))
      (if (= (string-length add) 1)
          (string-append "." add)      ;si aggiunge il riporto di 0
          add       ;altrimenti si restituisce la stringa intera, formata da 2 caratteri, il primo sarà sempre il riporto
       )
    )
  )
)


(define btr-carry-sum
     (lambda (add1 add2 c)
        (let ((k1 (string-length add1)) (k2 (string-length add2)))
          (cond
            ((= k1 k2)
                   ;le due stringhe hanno la stessa lunghezza perciò si esegue la somma normalmente
                   (normalized-btr (somma add1 add2 "."))
            )
            ;se non sono uguali si aggiunge (kMag - Kmin) "." a SX della stringa più corta
            ((< k1 k2)     ; add2 < add1 perciò si allunga add2
                  (normalized-btr (somma (aggiungi add1 (- k2 k1)) add2 "."))
             )
            ((< k2 k1)  ; add2 < add1 perciò si allunga add2
                  (normalized-btr (somma (aggiungi add2 (- k1 k2)) add1 "."))
            )
          )
        )
     )
)