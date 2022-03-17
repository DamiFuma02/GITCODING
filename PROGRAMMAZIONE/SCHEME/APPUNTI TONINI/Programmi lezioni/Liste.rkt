;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Liste) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; null, cons, null?, car, cdr
;; lenght, list-ref, append, reverse

;; list-ref: voglio estrarre un elemento da una lista
(define lista-ref
  (lambda (u i)     ;;u è una lista, i è un intero (posizione elemento)
    (if (= i 0)
        (car u)
        (lista-ref (cdr u) (- i 1))
    )
   ))

;; append: voglio unire 2 liste

(define appendi
  (lambda (u v)    ;;u e v sono 2 liste
    (if (null? u)
        v
        (cons (car u) (append (cdr u) v))  ;;isolo il primo elemento di u. Con la ricorsione, appena u diventa vuota restituisco v
        )
  )
 )

;; lenght: sapere lunghezza lista

(define lunghezza
  (lambda (u)
    (if (null? u)
        0
        (+ (lunghezza (cdr u)) 1)
    )
  )
)

;; reverse

(define inverti
  (lambda (u)
    (if (null? u)
        null
        (appendi (inverti (cdr u)) (cons (car u) null))
  )
))

(define inverti-eff
  (lambda (u v)
    (if (null? u)
        v
        (inverti-eff (cdr u) (cons (car u) v))
    )
  )
)