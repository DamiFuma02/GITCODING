;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es4) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))


(define btd-val                ;converte il simbolo nel suo valore numerico
  (lambda (string)
       (cond
               ((string=? string "-")-1)
               ((string=? string ".")0)
               ((string=? string "+")1)
       )
  )
)

;converte il valore numerico nel corrispondente simbolo del BTR
(define btd-rep                                               ; valore: stringa "-", ".", "+"
  (lambda (v)                                                 ; v: [-1, 0, 1]
    (cond ((= v -1) "-")
          ((= v  0) ".")
          ((= v +1) "+")
          )
    ))
 



; n =  3* (quotient n 3) + (remainder n 3)
;conversione da numero intero a stringa di simboli del BTR
(define number-string 
  (lambda (n)     ;numero intero
    (let ((q (quotient n 3))    (r (remainder n 3)))
      ;il resto deve essere espresso come simbolo del BTR
      (cond ((= r 2)       ; n = 3*q +2 = 3*q + 3 -1 = 3(q+1) - 1
                           ;2 = 3 -1 = 1*3^1 + -1*3^0. Si salva la cifra con 3^0 meno significativa
                 (string-append (number-string (+ q 1) )  (btd-rep -1) )
             )
            ((= r -2)    ; n = 3*q -2 = 3*q -3 +1 = 3(q-1) +1
                 (string-append (number-string (- q 1)) (btd-rep +1))
             )
            ((= q 0)     ; n = 3*0 + r
                 (string-append (btd-rep r))
             )
            (else      ; n = 3*q + r. r è gia in btr perciò si converte semplicemente
                 (string-append (number-string q) (btd-rep r))
            )
       )
     )
  )
)

;converte una stringa di simboli btr in numero intero decimale
(define string-number
      (lambda (stringa)
           (let ((k (- (string-length stringa) 1)))     ; k = ( string-length stringa ) -1
             (if (= k 0)
                 (btd-val (substring stringa k)) ; converte il simbolo rimasto in numero
                 ;altrimenti converte in numero la cifra a DX e richiama se stessa
                 (+
                  ;   "++--" = (3* "++-") + "-"
                       (* 3 (string-number (substring stringa 0 k)))
                       (btd-val (substring stringa k))
                  )
              )
            )
       )
 )

 
 ;effettua la somma in colonna delle due stringhe, carattere per carattere in base alla loro posizione nella stringa. 
(define sum              ;restituisce il simbolo relativo al risultato della somma                    
  (lambda (add1 add2 c)        ;carry è il riporto in ingresso
     ; viene effettuata la somma numerica dei simboli
    ;la somma ottenuta va convertita in stringa di BTR, tramite la funzione apposita
    (let ( (k1 (-(string-length add1)1)) (k2 (-(string-length add2)1)) )
      ;definizione lunghezza stringhe add1 e add2
      (if (or (= k1 0) (= k2 0))
          (if (= k1 0)
                  (if (= k2 0)
                             ;le 2 k sono entrambe 0, cioè add1 e add2 contengono 1 solo carattere
                             (number-string (+ (btd-val add1) (btd-val add2) (btd-val c)))
                             (string-append
                                   (substring add2 0 (- k2 1)) ; elimina le ultime 2 cifre rimanenti dell add2
                                   (sum (substring add2 0 (- k2 1)) (substring somma 0 1) "." )
                                   (substring somma (- (string-length somma) 1)) ;ultima cifra
                              )
                   )
                           ;k2 = 0, ma k1 > 0
                   (string-append
                                  (substring add1 0 (- k1 1)) ; elimina le ultime 2 cifre rimanenti dell add1
                                  (sum (substring add1 0 (- k1 1)) (substring somma 0 1) "." )
                                  (substring somma (- (string-length somma) 1)) ;ultima cifra
                    )
           )
          (let ((somma (sum (substring add1 k1) (substring add2 k2) c)))
              ;definizione somma che contiene il valore della somma tra 3 simboli
              ;somma avrà una lunghezza fissa di 2
             ;somma contiene la somma dell'ultima cifra delle 2 strighe add
               (if (or (= k1 0) (= k2 0))
                     
            ;se k1 e k2 != 0 allora effettua una somma ricorsiva semplice
                     (string-append
                             (sum (substring add1 0 k1) (substring add2 0 k2) (substring somma 0 )   ;carry = (substring somma 0 )
                              ;richiama se stessa eliminando le ultime 2 cifre, gia sommate
                             ;il c equivale alla seconda cifra della somma prec
                             )
                             (substring somma (- (string-length somma) 1)) ;ultimo carattere della somma
                     )
               )
      
           )
       )
    )
  )
)


       ;   k1=5 "+--+."   k2=4  "--.+"
;funzione chiamata dall'utente
(define btr-sum  
  (lambda (add1 add2)
    ;anche se le stringhe hanno lunghezza diversa si deve sommare partendo dalla cifra meno significativa, quindi quella a DX
    ;individuata da k = (string.length stringa) -1
    (sum add1 add2 ".")     ;il 3 parametro è il primo carry, che è 0
    
  )

)

(btr-sum "-" "-")