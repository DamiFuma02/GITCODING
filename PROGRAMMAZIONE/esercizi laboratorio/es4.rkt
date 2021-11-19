;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es4) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define btr "-.+")            ;l'indice del vettore fa sotratto con -1 per ottenere il valore numerico di ogni simbolo
(define result "")            ;risultato da produrre in output da btr-sum, contiene i simboli del btr

(define char-number                ;converte il simbolo nel suo valore numerico
  (lambda (char)
    (cond
      ((string=? char #\-)
       -1
      )
      ((string=? char #\+)
       1
      )
      (else 0 )
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

;questa funzione converte un numero decimale intero in btr. Vale sempre la regola posizionale, per cui "+-" = "+"*3^1 + "-"*3^0 = 1*3 + -1 = 3-1 = 2
(define btr-rep                                               ; valore: stringa di +/./-
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


(define sum  ;restitusce una stringa "carry + somma"
  (lambda (a1 a2 c)
    (let ((add (btr-rep (+ (string-numer a1) (string-numer a2) (string-numer c)) )))
      (if (= (string-length add) 1)
          (string-append "." add)      ;si aggiunge il riporto di 0
          add       ;altrimenti si restituisce la stringa intera, formata da 2 caratteri, il primo sarà sempre il riporto
       )
    )
  )
)

(define carry-sum                                  ;effettua la somma in colonna delle due stringhe, carattere per carattere in base alla loro posizione nella stringa. 
  (lambda (add1 add2 carry)
    (let ((k1 (- (string-length add1) 1)) (k2 (- (string-length add2) 1)))
            (if (or (= k1 0)(= k2 0))
                (if (= k1 0)
                    (if (= k2 0)
                        (substring (btr-rep (+ (string-numer add1) (string-numer add2) (string-numer carry)) ) 1)   ;salva solo l'ultima cifra della somma
                     )
                 );se sono entrambe diverse da 0 si effettua una somma ricorsiva carry = prima cifra della somma precedente
                (sum (string-ref add1 (- k1 1)) (string-ref add2 (- k2 1)) (string-ref (sum (string-ref add1 k1) (string-ref add2 k2) () ) 0) )
             )
     )
  )
)


(define btr-sum
  (lambda (add1 add2)
    (sum add1 add2 ".")     ;prima somma con riporto 0
  )
)