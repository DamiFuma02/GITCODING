;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2DManhattan) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
(define manhattan       ; valore: naturale
  (lambda (down right)  ; down, right: naturali
    (if (or (= down 0) (= right 0))
        1
        (+ (manhattan (- down 1) right)
           (manhattan down (- right 1)))
        )
    ))