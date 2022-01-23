;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 11-07-2017) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))
(define lcvs ; valore: lista di interi
 (lambda (f g a b) ; f, g: procedure [intero --> intero]; a, b: interi
 (lcvs-rec f a g a b)
 )
)


(define better    ;restituisce la lista più lunga
 (lambda (u v);u, v : LISTE
     (if (< (length u) (length v)) v u)
  )
)

(define lcvs-rec
      (lambda (f i g j n); i, j= punto di partenza delle 2 funzioni
            (cond ((or (> i n) (> j n))
                   null    ;FINE DELLA RICERCA
                  )
                  ((= (f i) (g j))  ;primi 2 elementi in comune
                    (cons (f i) (lcvs-rec f (+ i 1) g (+ j 1) n)))
                  (else
                      (better (lcvs-rec f (+ i 1) g j n)
                              (lcvs-rec f i g (+ j 1) n)
                      )
                  )
            )
      )
)


