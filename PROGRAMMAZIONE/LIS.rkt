;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname LIS) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
;;LONGEST INCREASING SUBSEQUENCE

;; '(1 3 5 2 8 4 3)    LISTA DA CONTROLLARE
;;LIS = 1 3 5 8

;;definire una lista contenente le lunghezze della LIS
;; per ogni elemento della lista



(define llis
  (lambda (lista)
    (let ((k (- (length lista) 1))
          )
      (cond
        ((null? lista)
         0
         )
        ((= k 1)
            1
         ) 
        (else
            ;; deve trovare il massimo tra 2 LIS calcolate a indici diversi
        )
      )
    )
  )
)


(define lis
  (lambda (lista)
    (let ((k (- (length lista) 1))
          )
         (cond ((null? lista)
                  null
               )
               ((= k 1)
                  lista
                )
               (else    ;CONTROLLA IL VALORE DEI CARATTERI
                   (if (> (list-ref lista k) (list-ref lista (- k 1)))
                       ;
                   )
               )
          )
    )
    
  )
)