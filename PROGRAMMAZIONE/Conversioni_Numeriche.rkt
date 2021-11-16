;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Conversioni_Numeriche) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))

(define controlla_numero    ;verifica che il numero inserito contenga cifre valide nell'insieme determinato dalla base di partenza
  (lambda (numero base)     ;numero  = stringa di cifre convertita tramite apposita funzione   base = numero
    (let ((k (- (string-length numero) 1)))
         (if (< k 0)        ;vuol dire che la stringa numero è vuota perciò il numero inserito è valido
             true
             (if (>= (- (char->integer (string-ref numero k)) 48) base)
                 false
                 (controlla_numero (substring numero 0 k) base)
             )
          )
     )
    
  )
)



















(define converti     ;funzione chiamata dall'utente
  (lambda (numero partenza arrivo)            ;numero = numero da convertire      partenza = base di partenza        arrivo = base di arrivo
    (if (controlla_numero (number->string numero) partenza)
        "vero"
        "falso"
    )
  )
)

