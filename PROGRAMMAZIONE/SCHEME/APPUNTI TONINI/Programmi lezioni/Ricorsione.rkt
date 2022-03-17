;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ricorsione) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Procedure ricorsive in Scheme
;; Complemento a 1 di una sequenza binaria

;; 1. Si parte da una sequenza binaria:

;; seq

;; 2. Si isola il primo bit, separandolo dal resto della sequenza

;; (substring seq 0 1) , (substring seq 1)

;; 3. Si delega la soluzione relativa al resto della sequenza

;; (delega (substring seq 1))

;; E' come supporre che delega sia una procedura predefinita

;; 4. Si determina direttamente il complemento a 1 del primo bit

;; (compl (substring seq 0 1))

;; Procedura per complementare stringhe di un solo bit

 (define compl    ;val: stringa
  (lambda (b)    ;;b: stringa 0 oppure 1
    (if (string=? b "0") "1" "0")
  )
)

;; 5. Si combinano i due risultati parziali

;;(string-append
;;  (compl (substring seq 0 1))
;;  (delega (substring seq 1))
;;)

;; 6. E se la sequenza contiene un solo bit?

;;(lambda (seq)
;;(string-append
;;  (compl (substring seq 0 1))
;;  (delega (substring seq 1))
;;))

;; 7. Quando i casi ricorsivi e quando i casi base?

;;(if (> (string-lenght seq) 1)
;; (string-append
;;  (compl (substring seq 0 1))
;;  (delega (substring seq 1))
;; )
;; (compl seq)
;;)

;; 8. Astrazione procedurale (al variare di...)

;;(lambda (seq)
;;(if (> (string-lenght seq) 1)
;; (string-append
;;  (compl (substring seq 0 1))
;;  (delega (substring seq 1))
;; )
;; (compl seq)
;;))

;; 9. Assegnazione di un nome alla procedura

(define compl-a-uno
(lambda (seq)
(if (> (string-length seq) 1)
 (string-append
  (compl (substring seq 0 1))
  (compl-a-uno (substring seq 1))
 )
 (compl seq)
))
)

(compl-a-uno "0110101")