;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname conversioneBinario) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define bin-rep  ; val: stringa
            (lambda (n)    ; n:   intero non negativo
              (let (
                    (lsb (if (even? n) "0" "1"))  ; oppure: (lsb (bit n))
                    )                             ;   (define bit ...)
                (if (< n 2)
                    lsb
                    (string-append
                     (bin-rep (quotient n 2))
                     lsb
                     )
                    )
                  )
              )
  )