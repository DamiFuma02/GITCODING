;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname prova) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define btd-rep                                               ; valore: stringa "-", ".", "+"
  (lambda (v)                                                 ; v: [-1, 0, 1]
    (cond ((= v -1) "-")
          ((= v  0) ".")
          ((= v +1) "+")
          )
    ))



(define string-number                ;converte il simbolo nel suo valore numerico
  (lambda (s)
    (cond
      ((string=? s "-")
       -1
      )
      ((string=? s "+")
       1
      )
      (else 0 )
     )
  )
)
 
;conversione numero decimale in stringa BTR
(define btr-rep                                               
  (lambda (n)                                                 ; n: intero
    (let ((r (remainder n 3)) (q (quotient n 3))              ; n = 3q + r  dove  -2 <= r <= +2
          )
      (cond ((= r -2)
             (string-append (btr-rep (- q 1)) (btd-rep +1)))  ; n = 3q - 2  ==>  n = 3(q-1) + 1,  q-1 < 0
            ((= r +2)
             (string-append (btr-rep (+ q 1)) (btd-rep -1)))  ; n = 3q + 2  ==>  n = 3(q+1) - 1,  q+1 > 0
            ((= q  0)
             (btd-rep r))                                     ; n = r
            (else
             (string-append (btr-rep q) (btd-rep r)))         ; n = 3q + r,  q <> 0
            ))
    ))

;conversione stringa BTR in numero decimale
(define converti
  (lambda (string)
          (let ((k (- (string-length string) 1)))
               (if (= k 0)
                    (string-number string )
                    (+
                         (* 3 (converti (substring string 0 k) ))
                         (string-number (substring string k) )   ;ultima cifra della stringa
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
(define somma
  (lambda (add1 add2 c)
          (let ((k1 (-(string-length add1)1)) (k2 (-(string-length add2)1)))
            (if (= k1 0)  ;sono rimasti 2 caratteri
                    (sum add1 add2 c)    ;quando k1 = 0 si è arrivati alla fine della somma 
                    (string-append (somma (substring add1 0 k1) (substring add2 0 k2) (substring (somma (substring add1 k1) (substring add2 k2) c) 0 1))
                                   (substring (somma (substring add1 k1) (substring add2 k2) c) 1)
                    )         
                 ) 
            
             ; (string-append
              ;            (sum (string-ref add1 (- k1 1)) (string-ref add2 (- k2 1)) (string-ref (sum (string-ref add1 k1) (string-ref add2 k2) #\.) 0))
              ;            (substring (sum (string-ref add1 k1) (string-ref add2 k2) #\.) 1) ;prende solo la cifra a DX
              ; ) 
          )       
   )
)

(define btr-sum
     (lambda (add1 add2)
           (somma add1 add2 ".")   ; il primo riporto va impostato come nullo
     )
)
 
