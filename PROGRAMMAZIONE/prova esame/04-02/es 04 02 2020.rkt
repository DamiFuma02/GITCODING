;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |es 04 02 2020|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
(define string-set
  (lambda (stringa index char)   ;setta il char alla posizione index della stringa
    (let ((length (string-length stringa))
         )
         (string-append
            (string char)
            (substring stringa 1 length)
         )
      )
  )
)

(define maiusc-min
  (lambda (char)
    (integer->char (- (char->integer char) 32))
  )
)

;ESERCIZIO 2
(define standard-form
  (lambda (lista)
    (if (null? lista)   ;per cambiare da min a maiusc si somma/sottrae 32
        ; se la lista è vuota restituisce vuoto
        null
        (let ((k (- (length lista) 1))  ;k = lunghezza lista
              (firstChar (string-ref (car lista) 0))
              )
              (append
                 (list
                   (if (or (< (char->integer firstChar) 65) (> (char->integer firstChar) 90))
                            ;se il carattere non è maiuscolo lo trasforma in maiusc (-32)
                            (string-set (car lista) 0 (maiusc-min firstChar))
                            ;se è gia maiusc non fa nulla e restituisce la stringa originale
                            (car lista)
                   )
                 )
                 (standard-form (cdr lista)) ;ricorsione togliendo il primo elemento della lista  
              )
        )
    )
  )
)


