;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname conversioni) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define result "")

(define toBase2
    (lambda (x)         ;x = numero intero positivo
        (if (>= x 1)
            (string-append result (integer->char (modulo x 2)))
            (toBase2(/ (x 2) ) )
            (string-append result (integer->char x))
            ;
            ;toBase2(/ (x 2) )       
        )
        ;(string-append result (integer->char x))
    )
)