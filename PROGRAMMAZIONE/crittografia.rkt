;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname crittografia) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define chiave     ;cambiando la procedura, cambia anche la chiave di crittografia e quindi l'interpretazione di un carattere
  (lambda (x)
    
      (let ((i (+ (char->integer x) 1)))
         (if (<= (char->integer #\Z))
             (integer->char i)
             (integer->char (- i 26))     ;se la posizione è maggiore della posizione del carattere "z" si torna all'inizio
         )
      )
    
                      
  )
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
