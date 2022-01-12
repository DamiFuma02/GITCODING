;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname LIS) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;;LONGEST INCREASING SUBSEQUENCE

;; '(1 3 5 2 8 4 3)    LISTA DA CONTROLLARE
;;LIS = 1 3 5 8

;;definire una lista contenente le lunghezze della LIS
;; per ogni elemento della lista


(define longer ;restituisce ila lista più lunga
  (lambda (a b )
    (if (< (length a) (length b))
        b
        (if (> (length a) (length b))
            a
            b
        ) 
    )
  )
)

(define llis
   (lambda (lista)
        (llis-rec lista 0 0)
   )
)

;; '(1 3 5 2 8 4 3)    LISTA DA CONTROLLARE
(define llis-rec
  (lambda (lista i t)  ;i posizone in cui cercare < LUNGH     t: numero precedente da confrontare
      (let  ( (lungh (length lista))
            )
            (cond ( (= i lungh)
                     0
                  )
                  ( (<= (list-ref lista i) t)
                    (llis-rec lista (+ 1 i) t)  ;continua a cercare 
                  )
                  (else
                     (max    ;Confronta le  2 lunghezze
                             ;LIS --> (list-ref lista i) < (list-ref lista i+1)
                             (+ 1   ;viene incrementata l lunghezza della LIS
                                (llis-rec lista
                                            (+ i 1)    ;posizione successiva
                                            (list-ref lista i) ;salva il numero appena letto
                                   )
                             )
                             ;LIS --> (list-ref lista i) >= (list-ref lista i+1)
                             ;NON viene incrementata la lunghezza
                             (llis-rec lista  
                                        (+ i 1)
                                        t      ;mantiene il dato precedente
                             )
                             
                     )
                  )
            )
      )
  )
)



;; '(1 3 5 2 8 4 3)    LISTA DA CONTROLLARE
(define lis    ;restituisce una lista LIS
  (lambda (lista)
    (lis-rec lista 0 0)
  )
)

(define lis-rec
  (lambda (lista i t)  ;i posizone in cui cercare < LUNGH     t: numero precedente da confrontare
      (let  ( (lungh (length lista))
            )
            (cond ( (= i lungh)
                     null
                  )
                  ( (<= (list-ref lista i) t)
                    (lis-rec lista (+ 1 i) t)  ;continua a cercare 
                  )
                  (else
                     (longer    ;Confronta le  2 liste
                             ;LIS --> (list-ref lista i) < (list-ref lista i+1)
                             (append   ;viene incrementata la lista
                              (list (list-ref lista i))
                                (lis-rec lista
                                            (+ i 1)    ;posizione successiva
                                            (list-ref lista i) ;salva il numero appena letto
                                   )
                                   
                             )
                             ;LIS --> (list-ref lista i) >= (list-ref lista i+1)
                             ;NON viene incrementata la lunghezza
                             (lis-rec lista  
                                        (+ i 1)
                                        t      ;mantiene il dato precedente
                             ) 
                              
                     )
                  ) 
            )
      )
  )
)

