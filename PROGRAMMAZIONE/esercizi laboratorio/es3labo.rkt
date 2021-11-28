;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es3labo) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))

(require racket/string)



(define base-dec                               ;deve convertire la stringa espressa in base (string-length base) in decimale SENZA VIRGOLA
  (lambda (base stringa) 
    (let ((k (- (string-length stringa) 1)))
      (if (= k 0)
                (nuovaCifra (string-ref stringa k) base 0)                     ;la stringa contiene un solo elemento
                (+ 
                    (* (string-length base) (base-dec base (substring stringa 0 k)))     ;funzione ricorsiva a cui viene passata la stringa senza l'ultimo carattere,  che verrà sommato progressivamente
                    (nuovaCifra (string-ref stringa k) base 0)                  ;viene calcolato il valore numerico del carattere all'ultima posizione della stringa    
                )
      )
    )
))

;risultato = risultato + Base * nuova cifra
;            risultato + (string-length insieme) * (nuovaCifra (string-ref stringa k) insieme)          




(define parte_intera                                           ;viene chiamata solo se la funzione 
  (lambda (stringa)
         (let ((k (-(string-length stringa)1)))
                (if (char=? (string-ref stringa k) #\.)
                    (substring stringa 0 k)                          ;restituisce la parte intera, perciò le cifre a SX della virgola
                    (parte_intera (substring stringa 0 k))           ;richiama se stessa togliendo l'ultimo carattere
                    
                 )
          )
    )
 )

(define parte_fraz
  (lambda (stringa)
    (if (char=? (string-ref stringa 0) #\.)
        (substring stringa 1)                          ;restituisce i caratteri a DX della virgola
        (parte_fraz (substring stringa 1))             ;richiama se stessa passando la stringa senza il carattere iniziale
     )
  ))


 

(define nuovaCifra                ;restuisce il valore numerico del carattere della stringa in base ai simboli dell'insieme. INDICE_INSIEME = VALORE NUMERICO
  (lambda (carattere insieme k)               ;k è l'indice in cui cercare il carattere, vale 0  se è la prima volta che si chiama la funzione nuovaCifra
    (if (< k (string-length insieme))         ;k deve essere minore della lunghezza della stringa, per non incorrere in una lettura fuori indice
        (if (char=? (string-ref insieme k) carattere )
            k ;CARATTERE TROVATO. Il valore numerico del carattere è rappresentato dall'indice 
            (nuovaCifra carattere insieme (+ k 1))  ;incrementa il contatore per cercare ancora nell'insieme
        )
        (string-append "ERRORE:" (make-string 1 carattere) " non appartiene all'insieme")         ;stampa a video dell'errore
    )
    
  )
)

(define checkpoint               ;all'interno della funzione viene eseguito anche il controllo del segno
  (lambda (stringa insieme )
    (if (string-contains? stringa "." )
        ;se conotiene il punto 
        (if (or (char=? (string-ref stringa 0)#\+) (char=? (string-ref stringa 0)#\-))
            (let ((k 1))         ;se trova il segno imposta k = 1 in modo da togliere il primo carattere dalla stringa totale
              (let ((numdec (base-dec insieme (string-append (parte_intera (substring stringa k)) (parte_fraz (substring stringa k)) )))  (divisore (expt (string-length insieme) (string-length (parte_fraz (substring stringa k))) )))
                 (if (char=? (string-ref stringa 0)#\-)
                     (* (/ numdec divisore) -1)
                     (/ numdec divisore)
                  ) 
               )
            )
            (let ((k 0))         ;se non trova il segno imposta k = 0 in modo da prendere la stringa totale
              (let ((numdec (base-dec insieme (string-append (parte_intera (substring stringa k)) (parte_fraz (substring stringa k)) )))  (divisore (expt (string-length insieme) (string-length (parte_fraz (substring stringa k))) )))
                 (/ numdec divisore)
               )
            ) 
         )
        ;se NON contiene il punto
        (if (or (char=? (string-ref stringa 0)#\+) (char=? (string-ref stringa 0)#\-))
            (let ((k 1))
              (if (char=? (string-ref stringa 0)#\+)
                (base-dec insieme (substring stringa k) )
                (* -1 (base-dec insieme (substring stringa k) ) )
              )
            )
            (let ((k 0))         ;se non trova il segno imposta k = 0 in modo da prendere la stringa totale
              (base-dec insieme (substring stringa k) )
            ) 
         )
    )

  )
)

;converte un numero decimale in BASE
(define from10
  (lambda (n base)
    (let ((resto (if (even? n) "0" "1")))
      (if (= n 1)
          "1"
          (string-append
                (from10 (quotient n base) base)
                resto
          )
       )
    )
  )
)


(define bin-rep           ;funzione chiamata dall'utente
  (lambda (string)
    (let ((insieme "01"))
         (checkpoint string insieme)
     )
    
  )
)


(define rep
  (lambda (insieme stringa)                    ;insieme contiene i simboli dell'alfabeto da cui partire con la conversione
    
    (checkpoint stringa insieme)
    
   )
 )
