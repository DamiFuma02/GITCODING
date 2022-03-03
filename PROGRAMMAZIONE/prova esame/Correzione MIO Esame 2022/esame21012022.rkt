;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname esame21012022) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))
;CORREZIONE MIO ESAME 21 01 2022

; ESERCIZIO 1

(define rec    ;val: stringa
  (lambda (s k p)    ;s, p: STRINGA;    k = INTERO > 0
       (cond   ((string=? s "") p)
               ((not (string=? (substring s 0 k) p)) "") ;se non sono uguali si ritorna ""
               (else
                  (rec (substring s k) k p)
               )
       ) 
  )
)

(define cyclic-pattern    ;val: STRINGA
  (lambda (s k)   ;s: STRINGA; k: INTERO > 0
        (cond ((string=? "" s)
                   ""   ;stringa vuota
              )
              ((= k 0)   ;pattern vuoto
                 ""
              )
              ((> (remainder (string-length s) k) 0)
                   ""    ;la lunghezza della stringa non è un multiplo di k
              )
              ;RICORSIONE
              ;;CERCARE LE RIPETIZIONE
              (else    (rec (substring s k) k (substring s 0 k))
              )
        )
  )
)

;ESERCIZIO 2
