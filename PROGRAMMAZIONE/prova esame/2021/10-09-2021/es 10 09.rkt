;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |es 10 09|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define list-freq ; val: intero
   (lambda (c lst) ; conta le occorrenze di c negli elementi della lista
       (proc (map    ;argomento procedurale
                 (str-freq c)    ;valore procedurale
                 lst
             )
       )
   )
)

(define proc   ;restituisce la somma degli argomenti numerici nella lista
  (lambda (lista)
         (if (null? lista)   ;0 elementi 
             0
             (+ (car lista)    ;primo elemento della lista
                (proc (cdr lista))
             )
         )
  )
)




(define str-freq    ;restituisce un numero intero di occorrenze del carattere char nella stringa
  (lambda (char)    ;char da contare
      (lambda (stringa) ;valore procedurale
        (cond (  (string=? stringa "")
                 0 ;CASO BASE
               )
              ((char=? (string-ref stringa 0) char)
                  (+ 1
                     ((str-freq char )(substring stringa 1))   ;toglie il primo carattere
                  )
              )
              (else
                  ((str-freq char )(substring stringa 1))
              )
        )
      )
  )
)



(define lista-freq
    (lambda (n lista) ;conta le occorrenze di n nella lista di numeri
        (proc (map
                  (num-freq n)
                  lista
              )
        )
    )
)

(define num-freq    
  (lambda (n)    
      (lambda (lst) ;valore procedurale
        (cond (  (null? lst)
                 0 ;CASO BASE
               )
              ((= (car lst) n)
                  (+ 1
                     ((num-freq n )(cdr lst))   ;toglie il primo elemento
                  )
              )
              (else
                  ((num-freq n )(cdr lst))
              )
        )
      )
  )
)



