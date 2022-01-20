;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |es 02-12-2019|) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))
;ES 1
(define match    ;restituisce una stringa in cui a ogni posizione vi è il carattere in comune tra u e v
                 ;se i due caratteri sono diversi aggiunge "*"
     (lambda (u v)
            (if (or (string=? u "") (string=? v ""))
                 ""   ;se una delle due stringhe è vuota è finita la ricerca
                 (let ( (uh (string-ref u 0))  ;primo carattere di U
                        (vh (string-ref v 0))  ;primo carattere di V
                        (s (match (substring u 1) (substring v 1)))   ;richiamata alla funzione match togliendo i primi char
                      )
                      (if (char=? uh vh)
                          (string-append (string uh) s)  ;se sono uguali si aggiunge il carattere appena letto
                          (string-append "*" s) ;se i due caratteri inziali sono diversi
                      )
                 )
            )
     )
)



;ES 2 02-12-2019
(define offset
  (char->integer #\0)
)

(define last-digit   ;ritorna il simbolo maggiore codificabile
  (lambda (base)
     (integer->char (+   ;carattere indicante la cifra codificata
                       (- base 1)   ;base - 1 = simbolo maggiore
                       offset   ;posizione del carattere 0
                    )
     )
  )
)

(define next-digit   ;ritorna il simbolo successivo a quello inserito
  (lambda (dgt)      ;dgt = char
    (string  ;inserimiento del carattere calcolato in una stringa da ritornare
            (integer->char      ;riconversione in char della posizione calcolata
               (+ (char->integer dgt) 1)   ;posizione successiva a quella di dgt
            )
    )
  )
)





(define increment  ;calcola il valore numerico dell'incremento di 1 unità del numero inserito
  (lambda (num base) ;num stringa di simboli appartenente all'alfabeto base
                     ; 2 <= base <= 10
      (let ((digits (string-length num)))  ;lunghezza della stringa numerica
                 (if (= digits 0)
                        "1"
                        (let ((dgt (string-ref num (- digits 1)))) ;carattere in ultima posizione della stringa num
                             (if (char=? dgt (last-digit base))  
                                (string-append
                                     (increment (substring num 0 (- digits 1)) base)  ;viene incrementata la stringa senza l'ultimo carattere
                                     "0"
                                )
                                (string-append (substring num 0 (- digits 1))
                                               (next-digit dgt)
                                )
                             )
                        )
                 ) 
        )
  )
)


;ES 3
(define lcs ; restituisce una lista di terne (posU posV carattere_comune)
      (lambda (u v) ; u, v: stringhe
         (lcs-rec  0    ;= i
                   u
                   0    ;= j
                   v
         )
      )
)


(define lcs-rec
         (lambda (i u j v)   ;u v stringhe; i j = posizioni
             (cond (    (or (string=? u "") (string=? v ""))
                        null
                   )
                   (    (char=? (string-ref u 0) (string-ref v 0))
                        (cons
                              (list (+ i 1) (+ j 1) (string (string-ref v 0))) ;prima lista contenente l'elemento comune
                              (lcs-rec (+ i 1) (substring u 1) (+ j 1) (substring v 1)) ;richiama togliendo il carattere comune e incrementando le posizioni
                        )
                   ) 
                   (else 
                       (better  ;vengono aumentate le posizioni per indicare che i/j-esimo simbolo è già stato controllato
                               (lcs-rec (+ i 1) (substring u 1) j v)  ;tolto il primo char di U
                               (lcs-rec i u (+ j 1) (substring v 1))  ;tolto il primo char di V
                       )
                   ) 
             )
       )
)


(define better   ;restituisce la lista più lunga
      (lambda (x y)   ;x y : LISTE
           (if (< (length x) (length y))
               y
               x
           )
      )
)


;ES 4

(define cycling-string
  (lambda (pattern n)  ;pattern: STRINGA; n; INTERO
    (if (= n 0)
        "";CASO BASE
        (let ( (lungh (string-length pattern))
             )
             (if (> n lungh)
                 ;se la lunghezza è <= allora la stringa può essere ripetuta interamente con un altro pezzo
                 (string-append pattern
                            (cycling-string pattern (- n lungh))
                 )
                 ;se n < lungh
                 (substring pattern 0 n) ;restituisce n caratteri della stringa
             )
        )
    )
  )
)

;ES 5

(define simbolo
  (lambda (lista) ;lista
               ;Yi = -1 se (Xi + Xi+1) < 0
               ;Yi = 0 se (Xi + Xi+1) = 0
               ;Yi = 1 se (Xi + Xi+1) > 0
     (let ((sum (+ (car lista) (cadr lista))) ;somma i primi 2 elementi 
          )
       (if (> sum 0)
          1
          (if (= sum 0)
              0
              -1
          )
       )
     )
  )
)

(define av     ;restituisce una lista di elementi calcolati dalla funzione simbolo
  (lambda (lista)   ;elementi di lista appartengono all'insieme A = {-1; 0; 1}
      (let ( (lungh (length lista))
           )
           (if (< lungh 2) 
               null    ;se la lista ha meno di 2 elementi non è valida
               (if (= lungh 2)
                   (list (simbolo lista)) ;se la lista ha 2 elementi si è arrivati al simbolo finale da restituire
                   (cons (simbolo lista)
                         (av (cdr lista))
                   ) 
               )
           )
      )
  )
)

;ES 6

;conversione di un numero binario con virgola in decimale

(define r-val
  (lambda (number)  ;number: STRINGA
    (let ( (k (- (string-length number) 1))  )
         (if (= k 0)  0 ;è rimasto solo il "." 
             (+ (*  (- (char->integer (string-ref number k)) offset) ;converte il carattere numerico in INTERO
                    (expt 2 (* k -1) ) )  ;= digit * 2 ^ (-k)
                (r-val (substring number 0 k)) ))))) ;toglie l'ultimo carattere appena calcolato

;ES 7

(define shared  ;restituisce la lista ordinata degli elementi comuni
  (lambda (u v) ;u v: LISTE ORDINATE di NUMERI INTERI POSITIVI
     (if (or (null? u) (null? v))
         null
         (if (= (car u) (car v))
             (cons (car u)
                   (shared (cdr u) (cdr v)) ;toglie i primi elementi da entrambe
             )
             (better
                  (shared (cdr u) v)
                  (shared u (cdr v))
             )
         )
     )
  )
)

;ES 8

(define countBits   ;conta i bit pari a  "1"
   (lambda (stringa)
       (let ( (lungh (- (string-length stringa) 1))
            )
           (cond ( (= lungh -1)  ;CASO BASE stringa vuota
                     0
                 )
                 ( (char=? (string-ref stringa lungh) #\1)
                        (+ 1
                             (countBits  (substring stringa 0 lungh) ) ;toglie l'ultimo carattere
                        )   
                 )
                 (else ;l'ultimo carattere = 0
                       (countBits  (substring stringa 0 lungh) ) 
                 )
           )
       )
   )
)


(define parity-check-failures  ;ritorna le stringhe con un numero DISPARI di "1"
  (lambda (lista) ;lista di stringhe binarie
      ;controlla le stringhe dall'ultima alla prima, salvando la posizione come eventuale ritorno
      (let ((lungh (- (length lista) 1))
           ) 
           (cond ( (null? lista) ;lista vuota CASO BASE
                   null 
                 )
                 ;SUPERA IL CONTROLLO
                 ( (= (remainder (countBits (car (reverse lista))) 2) 0)  ;l'ultimo elemento contiene un numero PARI di 1
                       (parity-check-failures (reverse (cdr (reverse lista))) ) ;toglie l'ultimo elemento e ricerca
                 )
                 (else ;non SUPERA il controllo
                         (append    (parity-check-failures (reverse (cdr (reverse lista))) ) ;toglie l'ultimo elemento
                                    (list lungh) ;posizione dell'elemento che non supera il controllo
                         )
                 ) 
           ) 
      )
  )
)


;ES 9
;restituisce gli elementi con minore differenza tra loro

(define rec   ;ritorna la differenza minore
   (lambda (lista diff)  ;diff = differenza precedente
        (let ( (lungh (- (length lista) 1)) 
             )
            (if (= lungh 0) ;la lista ha 1 solo elemento
                diff      ;ritorna la differenza minore
                (let ( (d (abs (- (car lista) (cadr lista)))) ;differenza tra i primi due elementi
                     )
                     (if (< d diff)
                          (rec (cdr lista) d) ;viene richiamata togliendo il primo carattere e aggiornando diff
                          (rec (cdr lista) diff) ;differenza minima sempre la stessa
                     )
                )
            )
            
        )
   )
)

(define rec2
  (lambda (lista diff)
      (let (   (lungh (- (length lista) 1))
               (d  (- (car lista) (cadr lista))) 
           ) 
            (if (= (+ (car lista) diff) (cadr lista))
                (list (car lista) (cadr lista))
                (rec2 (cdr lista) diff)                      
            )
      )
  )
)


(define closest-pair
   (lambda (lista) ;lista di numeri positivi con virgola
        
        (let ( (lungh (- (length lista) 1))
               (dmin (rec lista 1000))  ;diff inziale molto alta
                
             )
             (if (= lungh 0)
                 null
                 (rec2 lista dmin)
             )
        )
   )
)


;es 10

;ritrona una lista di caratteri in ordine crescente aggiungendo char
(define sorted-ins
    (lambda (lista char) ;inserisce il char nella lista in ordine crescente
        (let ((lungh (- (length lista) 1))
             )
             (if (null? lista)
                 (list char)
                 (if (char>? (car lista) char)
                      (cons char lista)   
                      (if (char<? (car lista) char)
                         (cons (car lista)  ;primo elemento della lista
                              (sorted-ins (cdr lista) char)  ;lista ordinata togliendo il primo elemento
                         )
                         ;se sono uguali si ritorna la lista stessa
                         lista
                      )
                 )
             )
         )
    )
)


(define sorted-char-list
   (lambda (stringa)
     (let ( (lungh (- (string-length stringa) 1))
          )
       (if (string=? stringa "")
           null  ;CASO BASE STRINGA VUOTA
           
           (if (= lungh 0) ;stringa di 1 carattere
               (list (string-ref stringa lungh)) ;ritorna una lista con il carattere rimasto
               (sorted-ins (sorted-char-list (substring stringa 1) )  ;toglie il primo carattere
                           (string-ref stringa 0) ;primo carattere della stringa
               )      
           )
       )
    )
   )
)





