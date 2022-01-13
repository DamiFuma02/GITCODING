;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname crittografia) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))


(define posZ
  (char->integer #\Z)
)


;LE SEGUENTI FUNZIONI VERRANNO PASSATE a crittazione come chiave di crittazione


(define regola-cesare     ;cambiando la procedura, cambia anche la chiave di crittografia e quindi l'interpretazione di un carattere
  (lambda (key) ; chiave di crittazione passata durante la chiamata

    (lambda (x)  ;valore procedurale restituito dalla funzione
    
      (integer->char
        (let ( (i (+ key (char->integer x))) ;;cod ASCII di X shiftata di key
             )
             (if (<= i posZ)
                 i
                 (- i 26)
             )
        )
      )
    
                      
   )
  )
)


(define crittazione   ;resituisce una stringa contente il msg cifrato in base alla funzione espressa da reg
  (lambda (msg reg)   ;reg: funzione di crittazione
    (if (string=? msg "")
        ""
        (string-append
             (string (reg (string-ref msg 0)) )    ;coverte il primo carattere della stringa msg
             (crittazione (substring msg 1) reg)
        )
    )
  )
)



;(crittazione (crittazione "CIAOCIAO" (regola-cesare 3)) testo cifrato
;             (regola-cesare 23)
;)  --> TESTO INIZIALE 23 + 3 = 26 = rotazione completa


;PROCEDURE CON ARGOMENTI E VALORI PROCEDURALI
;data la funzione di crittazione restituire quella di decrittazione

(define posA (char->integer #\A))

(define regola-inversa ;restituisce la procedura decifr per decifrare
  (lambda (cifra)    ;cifr =procedura di crittazione
     (let ( (k (char->integer (cifra #\A)))  ;ASCII del char cifrato da A
          )
         (regola-cesare (- 26(- k posA))) ;differenza tra il carattere cifrato e il carattere A
                    ;corrisponde alla key di crittazione nella regola di cesare
     ) 
  )
)

;(define chiaveCrittazione (regola-cesare 3))

;(crittazione "CIAO" chiaveCrittazione)
;= "FLDR"   -> testo shiftato di 3

;(crittazione "FLDR"
;          (regola-inversa chiaveCrittazione) = (regola-cesare (26 - (k - posA)))
;)   = "CIAO"



(define regola-gen-inv  ;valore: procedura inversa generale
  (lambda (reg)
    ;bisogna scoprire il carattere inverso
    ;si usa una ricorsione finchè si trova la chiave giusta
    ;BRUTE FORCE
      (lambda (c)   ;carattere da trovare
           (trova reg c posA) ;cod= codice ASCII del carattere progressivo da controllare
        
      )
  )
)


(define trova   ;trova la chiave da restituire
  (lambda (reg c i)   ;indice = cod ASCII da controllare ricorsivamente
                           ;c : carattere
          (if (char=? (reg (integer->char i)) c)
             (integer->char i) ;CHIAVE TROVATA
             (trova reg c (+ i 1)) ;ricerca successiva
          )
  )
)

;(define regola (regola-cesare 3))

;(crittazione "CIAO" regola)  --> CIFRA IL TESTO CIAO = "FLDR"

;(crittazione "FLDR" (regola-gen-inv regola))  -->DECIFRA


