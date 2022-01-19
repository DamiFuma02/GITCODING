;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Btr) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; Sequenza: 1 3 9 27 81 ecc...
;; Con i pesetti posso riuscire  pesare qualsiasi intero
;; - + - + . = -60
;; + = moltiplico potenza di 3 per +1
;; - = moltiplico potenza di 3 per -1
;; . = 0, peso non usato

;; Interpretazione della rappresentazione bilanciata di un intero

(define btr-val   ;; val: intero
  (lambda (btr)   ;; bin: stringa di -.+
    (let ((k (- (string-length btr) 1)))
      (if (= k 0)
          (btd-val btr)
          (+
           (* 3 (btr-val (substring btr 0 k)))
           (btd-val (substring btr k))
          )
      )
    )
  ))

(define btd-val   ;; val: intero
  (lambda (btd)   ;; bit: stringa -+.
    (cond ((string=? btd "-") -1)
          ((string=? btd ".") 0)
          ((string=? btd "+") +1)
        )
     ))





;; Rappresentazione ternaria bilanciata di un intero

(define btr-rep  ;; val: string di -+.
  (lambda (n)    ;; n: intero 
    (if (< (abs n) 2)
    (btd-rep n)
    (let((q (quotient n 3))
         (r (remainder n 3))
         )
      (cond ((< (abs r) 2)
      (string-append (btr-rep q) (btd-rep r))
      )
      ((= r +2)
       (string-append (btr-rep (+ q 1)) (btd-rep -1))
       )
      ((= r -2)
       (string-append (btr-rep (- q 1)) (btd-rep +1))
       )
      ))
)))

(define btd-rep   ;; val: intero
  (lambda (v)   ;; bit: stringa -+.
    (cond ((= v -1) "-") 
          ((= v 0) ".") 
          ((= v +1) "+") 
        )
))


