;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname LIS) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
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
        ((> (list-ref lista k) (list-ref lista (- k 1)))
            (max
                ;aggiunge 1 alla lunghezza e shifta k di 1 pos a SX
                (+ 1 (llis  (reverse (cdr (reverse lista))) ) ) ;toglie l'ultimo elemento della lista
                      
                (2)
            );; deve trovare il massimo tra 2 LIS calcolate a indici diversi
        )
      )
    )
  )
)

(define longer ;restituisce la lista più lunga tra a e b
  (lambda (a b)
    "ciao"
  )
)



(define lis    ;restituisce una lista LIS
  (lambda (lista)
    (let ((k (- (length lista) 1))   ;contatore per la ricerca
          )
         (cond  ;CASI BASE
               ((null? lista) 
                  null
               )
               ((= k 0) ;lista di 1 elemento lista, ritorna se stessa
                  (car lista )
                )
               
               
               ((> (list-ref lista k) (list-ref lista (- k 1)))    ;CONTROLLA IL VALORE DEGLI ELEMENTI
                   (longer
                        (cons (list-ref lista (- k 1)) (list (list-ref lista k)))   ;LIS= (minore, maggiore) provvisoria
                        (lis ;richiama se stessa per cercare un altro numero minore dell'ultimo
                             (reverse        ;toglie il penutlimo elemento della lista
                                (cons (list (list-ref lista k))   ;ultimo elemento della lista
                                    (cddr (reverse lista)) ;toglie i primi due elementi della (reverse lista) 
                                )
                             )
                        ) 
                   )
               )
               ((not (> (list-ref lista k) (list-ref lista (- k 1))))
                   (lis ;richiama se stessa per cercare un altro numero minore dell'ultimo
                             (reverse        ;toglie il penutlimo elemento della lista
                                (cons (list (list-ref lista k))   ;ultimo elemento della lista
                                    (cddr (reverse lista)) ;toglie i primi due elementi della (reverse lista) 
                                )
                             )
                   )
               )
          )
    )
    
  )
)


(define trovaminore
  (lambda (x lista)   ;lista di liste di coppie di numeri x y : x < y
       (let ((k (- (length lista) 1))
            )
            (if (> (list-ref k) (list-ref (- k 1)))
                (cons (list-ref k)
                      (cons (list-ref (- k 1))
                            (trovaminore  
                                (reverse (cdr (reverse lista))) ;toglie l'ultimo elemento
                            )
                      )
                )
                (trovaminore
                      (reverse (cdr (reverse lista))) ;toglie l'ultimo elemento
                )
            )
       )
  )
)