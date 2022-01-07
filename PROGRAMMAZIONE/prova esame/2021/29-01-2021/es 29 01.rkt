;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |es 29 01|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
;ESERCIZIO 1
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

;ESERCIZIO 2

(define lcs-align   ; val: coppia di liste di caratteri
    (lambda (u v) ; u, v: stringhe
         (let ((m (string-length u)) (n (string-length v))
              )
              (cond ((or (= m 0) (= n 0))
                        (list (string->list u) (string->list v))
                    )
                    ((char=? (string-ref u 0) (string-ref v 0))
                        ;toglie i primi caratteri uguali e rieffettua la ricerca
                        (lcs-align (substring u 1) (substring v 1) )
                    )
                    (else
                        (let ( (du (lcs-align (substring u 1) v))
                               (dv (lcs-align u (substring v 1)))
                             )
                             (if (> (+ (length (car du)) (length (cadr du)))
                                    (+ (length (car dv)) (length (cadr dv)))
                                 )
                                 (list (car dv)
                                       (cons (string-ref v 0) (cadr dv))
                                 )
                                 XXXXXXXX
                             )
                        )
                    )
              )
         )
     )
)









; ESERCIZIO 3
(define f    ;; per ogni x y tale che 0 < x <= y
             ;si dimostra che la formula ottenuta è
             ;y^2 - (x-1)^2
  (lambda (x y)    ;;; x <= y
    (if (= x y)
        (+ x y -1)  
        (let ((z (quotient (+ x y) 2))
              )
          (+ (f x z) (f (+ z 1) y))
        )
    )
  )
)