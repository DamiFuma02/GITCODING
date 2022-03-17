;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Ricorsione e rappresentazioni binarie|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; Rappresentazione binaria di un intero non negativo
;; Informazione sulla parità ---> ultimo bit
;; Per capire se un numero binario è pari o dispari si guarda l'ultima cifra (0=pari, 1=dispari)
;; Spostare a destra un numero binario significa dividere per 2 (il bit perso è il resto della divisione)
;; n = 2q + r


(define bin-rep  ;; val: string di 0 e 1
  (lambda (n)    ;; n: intero non negativo
    (if (< n 2)
    (bit-rep n)
    (let((q (quotient n 2))
         (r (remainder n 2))
         )
      (string-append
      (bin-rep q)
      (bit-rep r)
      )
    ))
    )
)

(define bit-rep  ; val: string di un bit
  (lambda (b)    ; b: 0 oppure 1
    (if (= b 0)
        "0"
        "1")
    ))

;; Interpretazione della rappresentazione binaria di un intero non negativo

(define bin-val   ;; val: intero
  (lambda (bin)   ;; bin: stringa di 0 e 1
    (let ((k (- (string-length bin) 1)))
      (if (= k 0)
          (bit-val bin)
          (+
           (* 2 (bin-val (substring bin 0 k)))
           (bit-val (substring bin k))
          )
      )
    )
  ))

(define bit-val   ;; val: intero
  (lambda (bit)   ;; bit: stringa 0 oppure 1
    (if (string=? bit "0")
        0
        1)
     ))

;; Rappresentazione in base B di un intero non negativo

(define num-rep  ;; val: string
  (lambda (n B)    ;; n: intero non negativo, B: compreso tra 2 e 16
    (if (< n B)
    (digit-rep n)
    (let((q (quotient n B))
         (r (remainder n B))
         )
      (string-append
      (num-rep q B)
      (digit-rep r)
      )
    ))
    )
)

(define digit-rep  ; val: string di un bit
  (lambda (b)      ; b: da 0 9 e da A a F
    (if (< b 10)
        (string (integer->char (+ zero b)))
        (string (integer->char (+ capa (- b 10))))
    )
  ))

(define zero (char->integer #\0))
(define capa (char->integer #\A))

