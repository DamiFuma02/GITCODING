;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname crittografia) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define regola-cesare     ;cambiando la procedura, cambia anche la chiave di crittografia e quindi l'interpretazione di un carattere
  (lambda (x)
    
      (let ((i (+ (char->integer x) 1)))
         (if (<= (char->integer #\Z))
             (integer->char i)
             (integer->char (- i 26))     ;se la posizione è maggiore della posizione del carattere "z" si torna all'inizio
         )
      )
    
                      
  )
)

(define posA
  (char->integer #\A)
)

(define crittazione   ;resituisce una stringa contente il msg cifrato in base alla funzione espressa da reg
  (lambda (msg reg)
    (if (string=? msg "")
        ""
        (string-append
             (string (reg (string-ref msg 0)) )    ;coverte il primo carattere della stringa msg
             (crittazione (substring msg 1) reg)
        )
    )
  )
)

(define regola-generale
  (lambda (reg)
    (let ((k (char->integer (reg #\A))))
      (regola-cesare (- 26 (- k posA)))
    )
  )
)

(define regola-inversa
  (lambda (reg)
    (lambda (c)
      (trova reg c posA)
    )
  )
)


;PROCEDURE CON VALORI PROCEDURALI

(define trova
  (lambda (reg c i)    ;reg=procedura    c=carattere    i=indice intero
     (if (char=? (reg (integer->char i)) c)
         (integer->char i)
         (trova reg c (+ i 1) )
     )
  )
)
