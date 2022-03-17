;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 4|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; DATI DUE INTERI IN NOTAZIONE BTR, SI VUOLE DETERMINARE LA RAPPRESENTAZIONE BTR DELLA SOMMA

;; PROCEDURA CHE RESTITUISCE LA RAPPRESENTAZIONE NON VUOTA EQUIVALENTE IN CUI LE EVENTUALI CIFRE ZERO (#\.) IN TESTA, ININFLUENTI, SONO RIMOSSE

(define normalized-btr ;; val: stringa
  (lambda (btr) ;; btr: stringa
    (cond
      ;; se la stringa è vuota, restituisco il punto
      ((=(string-length btr)0) ".")
      ;; se il la prima cifra è un punto, tolgo la cifra e richiamo la procedura
      ((string=? (substring btr 0 1) (string #\.)) (normalized-btr (substring btr 1 (string-length btr))))
      ;; se non ci sono altri punti, restituisco la stringa
      (else btr)
    )
  )
)

;; PROCEDURA CHE RESTITUISCE LA CRIFRA MENO SIGNIFICATIVA OPPURE ZERO SE L'ARGOMENTO è LA STRINGA VUOTA

(define lsd ;; val: carattere
  (lambda (btr) ;; btr: stringa
    ;; verifico se la stringa è vuota
    (if(= (string-length btr) 0)
       ;; se vero, restituisco il punto
       #\.
       ;; se falso restituisco la cifra meno significativa
       (string-ref btr (-(string-length btr)1) ) 
    )
  )
)

;; PROCEDURA CHE RESTITUISCE LA PARTE CHE PRECEDE L'ULTIMA CIFRA OPPURE LA STRINGA VUOTA SE L'ARGOMENTO è LA STRINGA VUOTA

(define head ;; val: carattere
  (lambda (btr) ;;btr: stringa
    ;; verifico se la stringa è vuota
    (if (= (string-length btr) 0)
       ;; se vero, restituisco la stringa vuota
       "" 
       ;; se falso, restituisco la penultima cifra
       (substring btr 0 (-(string-length btr)1) )
    )
  )
)

;; PROCEDURA CHE RESTITUISCE LA CIFRA BTR CORRISPONDENTE DELLA RAPPRESENTAZIONE DELLA SOMMA

(define btr-digit-sum                    ;; val: carattere +/./-
  (lambda (u v c)                        ;; u, v, c: caratteri +/./-
    (cond ((char=? u #\-)                ;; u v c
           (cond ((char=? v #\-)
                  (cond ((char=? c #\-)  ;; - - -
                         #\.)
                        ((char=? c #\.)  ;; - - .
                         #\+)
                        ((char=? c #\+)  ;; - - +
                         #\-)))
                 ((char=? v #\.)
                  (cond ((char=? c #\-)  ;; - . -
                         #\+)
                        ((char=? c #\.)  ;; - . .
                         #\-)
                        ((char=? c #\+)  ;; - . +
                         #\.)))
                 ((char=? v #\+)         ;; - + c
                  c)))
          ((char=? u #\.)
           (cond ((char=? v #\-)
                  (cond ((char=? c #\-)  ;; . - -
                         #\+)
                        ((char=? c #\.)  ;; . - .
                         #\-)
                        ((char=? c #\+)  ;; . - +
                         #\.)))
                 ((char=? v #\.)         ;; . . c
                  c)
                 ((char=? v #\+)
                  (cond ((char=? c #\-)  ;; . + -
                         #\.)
                        ((char=? c #\.)  ;; . + .
                         #\+)
                        ((char=? c #\+)  ;; . + +
                         #\-)))))
          ((char=? u #\+)
           (cond ((char=? v #\-)         ;; + - c
                  c)
                 ((char=? v #\.)
                  (cond ((char=? c #\-)  ;; + . -
                         #\.)
                        ((char=? c #\.)  ;; + . .
                         #\+)
                        ((char=? c #\+)  ;; + . +
                         #\-)))
                 ((char=? v #\+)
                  (cond ((char=? c #\-)  ;; + + -
                         #\+)
                        ((char=? c #\.)  ;; + + .
                         #\-)
                        ((char=? c #\+)  ;; + + +
                         #\.)))))
          )))

;; PROCEDURA CHE RESTITUISCE IL RIPORTO DERIVANTE DALLA SOMMA DELLE 2 CIFRE

(define btr-carry                        ;; val: carattere +/./-
  (lambda (u v c)                        ;; u, v, c: caratteri +/./-
    (cond ((char=? c #\-)                ;; u v c
           (cond ((char=? u #\-)
                  (cond ((char=? v #\-)  ;; - - -
                         #\.)
                        ((char=? v #\.)  ;; - - .
                         #\-)
                        ((char=? v #\+)  ;; - - +
                         #\+)))
                 ((char=? u #\.)
                  (cond ((char=? v #\-)  ;; - . -
                         #\-) 
                        ((char=? v #\.)  ;; - . .
                         #\.)
                        ((char=? v #\+)  ;; - . +
                         #\.)))
                 ((char=? u #\+)         ;; - + c 
                  (cond ((char=? v #\-)  ;; - . -
                         #\.)
                        ((char=? v #\.)  ;; - . .
                         #\.)
                        ((char=? v #\+)  ;; - . +
                         #\.)))))
           
          ((char=? c #\.)
           (cond ((char=? u #\-)
                  (cond ((char=? v #\-)  ;; . - - 
                         #\-)
                        ((char=? v #\.)  ;; . - .
                         #\.)
                        ((char=? v #\+)  ;; . - +
                         #\.)))
                 ((char=? u #\.)         ;; . . c
                  (cond ((char=? v #\-)  ;; - . -
                         #\.)
                        ((char=? v #\.)  ;; - . .
                         #\.)
                        ((char=? v #\+)  ;; - . +
                         #\.)))
                 ((char=? u #\+)
                  (cond ((char=? v #\-)  ;; . + -
                         #\.)
                        ((char=? v #\.)  ;; . + .
                         #\.)
                        ((char=? v #\+)  ;; . + +
                         #\+)))))
          
          ((char=? c #\+)
           (cond ((char=? u #\-)         ;; + - c
                  (cond ((char=? v #\-)  ;; - . -
                         #\.)
                        ((char=? v #\.)  ;; - . .
                         #\.)
                        ((char=? v #\+)  ;; - . +
                         #\.)))
                 ((char=? u #\.) 
                  (cond ((char=? v #\-)  ;; + . -
                         #\.)
                        ((char=? v #\.)  ;; + . .
                         #\.)
                        ((char=? v #\+)  ;; + . +
                         #\+)))
                 ((char=? u #\+)
                  (cond ((char=? v #\-)  ;; + + -
                         #\-)
                        ((char=? v #\.)  ;; + + .
                         #\.)
                        ((char=? v #\+)  ;; + + +
                         #\.)))))
          )))

;; PROCEDURA CHE RESTITUISCE LA RAPPRESENTAZIONE BTR DELLA SOMMA INCLUSIVA DEL RIPORTO

(define btr-carry-sum 
  (lambda (btr1 btr2 c) ;; btr1, btr2: stringhe      c: carattere          
    (cond ((and(=(string-length btr1)0) (=(string-length btr2)0)) (string c))
          ((and(=(string-length btr1)0) (>(string-length btr2)0)) (string-append (btr-carry-sum "" (head btr2) (btr-carry (lsd btr1) (lsd btr2) c)) (string(btr-digit-sum (lsd btr1) (lsd btr2) c))))
          ((and(>(string-length btr1)0) (=(string-length btr2)0)) (string-append (btr-carry-sum (head btr1) "" (btr-carry (lsd btr1) (lsd btr2) c)) (string(btr-digit-sum (lsd btr1) (lsd btr2) c))))
          (else (string-append (btr-carry-sum (head btr1) (head btr2) (btr-carry (lsd btr1) (lsd btr2) c)) (string (btr-digit-sum (lsd btr1) (lsd btr2) c))))
     )
   )
)

;; PROCEDURA PRINCIPALE

(define btr-sum
  (lambda (btr1 btr2)
    (normalized-btr (btr-carry-sum btr1 btr2 #\.))
  )
)

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (btr-sum "-+--" "+") → "-+-." 
;; (btr-sum "-+--" "-") → "-.++" 
;; (btr-sum "+-.+" "-+.-") → "." 
;; (btr-sum "-+--+" "-.--") → "--++."
;; (btr-sum "-+-+." "-.-+") → "-.-.+" 
;; (btr-sum "+-+-." "+.+-") → "+.+.-"
