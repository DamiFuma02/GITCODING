;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Ricorsione e costrutto let|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define compl    ;val: stringa
  (lambda (b)    ;;b: stringa 0 oppure 1
    (if (string=? b "0") "1" "0")
  )
)

(define compl-a-uno   ;; val: stringa
(lambda (seq)         ;; seq: stringa non vuota di 0/1
 (let ((n (string-length seq))
       )
 (if (>= n 2)
  (let ((k (quotient n 2))
        )
    (string-append
     (compl-a-uno (substring seq 0 k))
     (compl-a-uno (substring seq k))
     ))
 (compl seq)
 )
 )
))

;; Il define non restituisce nessun valore. Il let restituisce il valore dell espressione che introduce.
;; Il define è un associazione nell'ambiente che vale da li in poi. Il let vale solo nell'ambito dell'espressione che introduce.


(compl-a-uno "0110101")