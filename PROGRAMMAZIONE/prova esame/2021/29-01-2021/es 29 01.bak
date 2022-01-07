;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es1) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
;dati 2 numeri x e y restituire in una lista
;(x+y)/2    e |x-y|/2



(define pair
  (lambda (x y)
       (list
            (/ (+ x y) 2)
            (/ (abs (- x y)) 2)
       )
  )
)


(define pair-list
  (lambda (list1 list2)
         (cond
            ( (or (null? list1) (null? list2))
              null     ;se almeno una lista è vuota ritorna null
            )
            (else
                 (append
                      (list
                            (pair (car list1) (car list2))
                      )   ;resituisce la lista calcolata da pair
                      (pair-list (cdr list1) (cdr list2))
                 )
            )
         ) 
  )
) 