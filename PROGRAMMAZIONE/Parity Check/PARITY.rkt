;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname PARITY) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))
;ES 8 02-12-2019
;(parity-check-failures '("0111" "1011" "0100" "1110")) → '(0 1 2 3)
;(parity-check-failures '("0110" "1101" "0000" "1011")) → '(1 3)
;QUALI ELEMENTI NON SUPERANO IL CONTROLLO
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