;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Esercizio 9 (cifrario di cesare)|) (read-case-sensitive #t) (teachpacks ((lib "Drawing.ss" "installed-teachpacks") (lib "Teachpack8.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "Drawing.ss" "installed-teachpacks") (lib "Teachpack8.ss" "installed-teachpacks")) #f)))
;LE SEGUENTI FUNZIONI VERRANNO PASSATE a crittazione come chiave di crittazione

(define alfabeto "ABCDEFGHILMNOPQRSTVX")     ;definisco per semplicità l'alfabeto latino

(define trova-lettera           ;trovo la lettera nell'alfabeto latino
  (lambda (x alfabeto)
    (if (char=? (string-ref alfabeto 0) x)
        alfabeto
        (trova-lettera x (substring alfabeto 1))
        )
    )
  )


(define ASCII        ;restituisce il valore di x in ASCII
  (lambda (x)
    (char->integer x)
    )
  )


(define regola-cesare     ;cambiando la procedura, cambia anche la chiave di crittografia e quindi l'interpretazione di un carattere
  (lambda (key) ; chiave di crittazione passata durante la chiamata

    (lambda (x)  ;valore procedurale restituito dalla funzione
      (integer->char
        (let ( (i (+ key (ASCII x))) ;cod ASCII di X shiftata di key
             )
             (if (<= i (ASCII #\Z))
                 i
                 (- i 26)
             )
        )
      )       
   )
  )
)


(define regola-cesare-latina     ;cambiando la procedura, cambia anche la chiave di crittografia e quindi l'interpretazione di un carattere, viene applicata all'alfabeto latino
  (lambda (key) ; chiave di crittazione passata durante la chiamata

    (lambda (x)  ;valore procedurale restituito dalla funzione
      (if (< key (string-length (trova-lettera x alfabeto)))   ;verifica se lo shift può essere eseguito senza dover ricominciare l'alfabeto
          (integer->char
           (ASCII (string-ref (trova-lettera x alfabeto) key)) 
           )
          (ASCII (string-ref alfabeto (- (string-length (trova-lettera x alfabeto)) key))) 
          )
      )
    )
  )


(define crittazione   ;resituisce una stringa contente il msg cifrato in base alla funzione espressa da reg
  (lambda (msg reg)
    (if (string=? msg "")
        ""
        (if (char=? (string-ref msg 0) #\space)   ;toglie gli spazi dalla crittazione
            (string-append
             (crittazione (substring msg 1) reg)
             )
            (string-append
             (string (reg (string-ref msg 0)) )    ;coverte il primo carattere della stringa msg
             (crittazione (substring msg 1) reg)
             )
            )
        )
  )
)

;(crittazione (crittazione "CIAOCIAO" (regola-cesare 3)) testo cifrato
;             (regola-cesare 23)
;)  RESTITUISCE IL TESTO INIZIALE 23 + 3 = 26 = rotazione completa


;;esempio di crittzaione con l'alfabeto latino
;(crittazione "ABCD EFGH ILMN OPQR" (regola-cesare-latina 3))
;"DEFGHILMNOPQRSTV"