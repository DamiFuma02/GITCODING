;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Map) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; funzione map (è predefinita)
(define mappa
  (lambda (f u)   ;;f è una procedura
    (if (null? u)
        null
        (cons (f (car u))(mappa f (cdr u)))) 
    ))
 
;; composizione funzionale
(define comp-fun
  (lambda (g f)
    (lambda (x)
      (g (f x))
      )
    ))

;; (define h (comp-fun (lambda(x) (+ x 1)) (lambda(x) (* 2 x))))
;; (map h '(0 1 2 3 4 5 6 7 8 9 10))

;; Iterata funzionale
;; Restituisce una funzione che verrà ripetuta k volte
(define iterata-fun
  (lambda (f k)
    (lambda (x)
    (if (= k 0)
        x
        (f ((iterata-fun f (- k 1)) x))
        ))
  ))