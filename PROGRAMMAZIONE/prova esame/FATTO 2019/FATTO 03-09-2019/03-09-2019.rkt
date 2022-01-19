;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 03-09-2019) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;ESERCIZIO 1
(define lis ; val : lista di liste (di interi)
 (lambda (s)   ; s : lista di inter
   (lis-rec s 0 null)
 )
) 

(define best ;retituise la lista più lunga
  (lambda (a b) ;a, b: LISTE
    (if (< (length a) (length b))
        a
        (if (= (length a) (length b))
            (list a b)
            b
        )
    )
  )
)


(define lis-rec
    (lambda (s t p)
           (cond (   (null? s)
                     (list (reverse p))
                 )
                 (   (<= (car s) t)
                     (lis-rec (cdr s) t p)
                 )
                 (else
                       (best (lis-rec (cdr s) t p)
                             (lis-rec (cdr s) (car s) (cons (car s) p))
                       )
                 )
            )
     )
)

;ESERCIZIO 2


(define btd-rep
    (lambda (v)
        (cond (  (= v -1)
                     "-"
              )
              (  (= v 0)
                     "."
              )
              (  (= v +1)
                     "+"
              )
        )
    )
)

(define btd-val
   (lambda (char)
      (cond ( (char=? char #\-)
              -1
            )
            ( (char=? char #\+)
              1
            )
            ( (char=? char #\.)
              0
            )
      )
   )
)


(define btr-rep
       (lambda (n)
           (let ( (r (remainder n 3))
                  (q (quotient n 3))
                )
                (cond (  (= r -2)
                            (string-append (btr-rep (- q 1)) (btd-rep +1))
                      )
                      (  (= r +2)
                            (string-append (btr-rep (+ q 1)) (btd-rep -1))
                      )
                      (  (= q 0)
                            (btd-rep r)
                      )
                      (else
                            (string-append (btr-rep q) (btd-rep r))
                      )
                 )
           )
       )
)



(define btr-list-rec ;ritorna una lista
     (lambda (s i)    ;s: STRINGA, i: INDICE
          (let ( (k (- (string-length s) 1))
               )
               (if (= k 0)   ;stringa con 1 solo carattere
                    (list (*
                              (expt 3 i)
                              (btd-val (string-ref s k))
                          ))
                    (append (btr-list-rec (substring s 0 k) (+ i 1))
                            (list (*
                                   (expt 3 i)
                                   (btd-val (string-ref s k))
                               ))
                    )
               ) 
          )
     )
)

(define btr-list ;restituisce una lista con i valori numerici pesati in base all'indice
   (lambda (n)    ;n: INTERO positivo/negativo
        (btr-list-rec (btr-rep n) 0)
   )
)