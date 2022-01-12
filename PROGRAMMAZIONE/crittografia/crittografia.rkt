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
;)  RESTITUISCE IL TESTO INIZIALE 23 + 3 = 26 = rotazione completa


;PROCEDURE CON ARGOMENTI E VALORI PROCEDURALI
;data la funzione di crittazione restituire quella di decrittazione

(define regola-inversa ;restituisce la procedura decifr per decifrare
  (lambda (cifr)    ;cifr =procedura di crittazione
     ""
  )
)
