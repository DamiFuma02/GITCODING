;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es3labo) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))




(define base-dec           ;deve convertire la stringa espressa in base (string-length base) in decimale 
  (lambda (base stringa)    ;stringa = stringa di NUMERO INTERO 
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
        (string-append "ERRORE:" (string carattere) " non appartiene all'insieme")         ;stampa a video dell'errore
    )
    
  )
)



(define checkSign     ;restituisce il segno dellas tringa, altrimenti FALSE
  (lambda (stringa)
       (cond
          ((char=? (string-ref stringa 0)#\+)
             #\+
           )
          ((char=? (string-ref stringa 0)#\-)
             #\-
           )
          (else
             #\a    ;non trova il segno perciò restituisce #\a   come carattere indicante della mancanza del segno
           )
        )
  )
) 

(define hasPoint?
  (lambda (string)
    (let ((k (- (string-length string) 1)))
      (cond
        ((char=? (string-ref string k) #\.)   ;controlla se l'ultimo carattere è una virgola
            #true
         )
        ((= k 0)
            #false    ;siccome ha gia controllato se è presente il . allora ritorna falso
         )
        (else
            (hasPoint? (substring string 0 k))   ;richiama se stessa togliendo l'ultimo carattere della stringa
         )
      )
    )
  )
)


(define bin-rep->number           ;funzione chiamata dall'utente
  (lambda (string)
    (let ((insieme "01"))
         (rep->number insieme string)
     )
    
  )
)
 

(define rep->number      ;funzione chiamata dall'utente per conversione generica in BASE 10
  (lambda (insieme stringa)                    ;insieme contiene i simboli dell'alfabeto da cui partire con la conversione
    ;controllo se il numero inserito ha la VIRGOLA
    (if (hasPoint? stringa)   ;la stringa contiene il "."
        ;controllo del segno
        (if (or (char=? (checkSign stringa) #\+) (char=? (checkSign stringa) #\-))
            ;se trova il segno toglie il primo carattere dalla stringa
            (let ((numdec (base-dec insieme (string-append (parte_intera (substring stringa 1)) (parte_fraz (substring stringa 1)) )))  (divisore (expt (string-length insieme) (string-length (parte_fraz (substring stringa 1))) )))
                 (if (char=? (checkSign stringa) #\-)
                     (* (/ numdec divisore) -1)
                     (/ numdec divisore)
                  ) 
             )   ;se non trova il segno prende la stringa totale
            (let ((numdec (base-dec insieme (string-append (parte_intera stringa ) (parte_fraz stringa) )))  (divisore (expt (string-length insieme) (string-length (parte_fraz stringa)) )))
                 (/ numdec divisore)
             )
         )
        ;;NON TROVA LA VIRGOLA
        (cond
          ((char=? (checkSign stringa) #\+)
             (base-dec insieme (substring stringa 1) )
           )
          ((char=? (checkSign stringa) #\-)
             (* -1 (base-dec insieme (substring stringa 1) ) )
           )
          (else
             (base-dec insieme stringa )
           )
        )
     )
    
    
   )
 )
