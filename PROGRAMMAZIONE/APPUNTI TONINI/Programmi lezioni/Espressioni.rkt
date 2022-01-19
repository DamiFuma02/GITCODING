;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname prova) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

; (*(*(* 2 3.14159) 5.0)(+ 5.0 11.8))

(define pg 3.14159)
(define sup-tot-cil (lambda(r h)(*(*(* 2 pg) r)(+ r h))))


(define plurale-sm
  (lambda (sm)
    (string-append (substring sm 0 (- (string-length sm) 1)) "i")
  )
)

(define plurale-sf
  (lambda (sf)
    (string-append (substring sf 0 (- (string-length sf) 1)) "e")
  )
)

(define participio
  (lambda (sm)
    (string-append (substring sm 6 (- (string-length sm) 0)) "uto")
  )
)

(define femminile?
  (lambda (s)
   ; (string=? (substring s (- (string-length s) 1)) "a")
    (char=? (string-ref s (- (string-length s) 1)) #\a)
   )
 )

; Espressioni condizionali
(define plurale    ; val: stringa
  (lambda (s)      ; s: stringa (sostantivo femminile o maschile
    (if (femminile? s)
        (plurale-sf s)
        (plurale-sm s)
    )
  )
)