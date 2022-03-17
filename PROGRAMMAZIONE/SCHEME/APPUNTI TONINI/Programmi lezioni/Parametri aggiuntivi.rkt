;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Parametri aggiuntivi|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; trovare quali sono i numeri primi in un intervallo

(define ha-divisori-fra?
  (lambda (x y n)
    (cond((> x y) false)     ;;intervallo di numeri vuoto
         ((= (remainder n x) 0) true)
         (else
          (ha-divisori-fra? (+ x 1) y n))
    )
))

(define primo?
  (lambda (n)
    (not (ha-divisori-fra? 2 (- n 1) n))
  ))

(define primi
  (lambda (x y)
    (cond ((> x y)
           null)
          ((primo? x)
           (cons x (primi (+ x 1) y)))
          (else
           (primi (+ x 1) y))
          )
    ))