;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |es 04 02 2020|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;ESERCIZIO 1

(define f     ; val: intero
    (lambda (x y u v)   ; x, y ≥ 0 interi; u, v interi
       (cond (  (and (= u 0) (= v 0))
                0
             )
             (  (= x 0)
                (if (= u 0)
                    0
                    1
                )
             )
             (  (= y 0)
                (if (= v 0)
                    0
                    1
                )
             )
             (else (+
                       (f (- x 1) y (- u 1) v)
                       (f x (- y 1) u (- v 1))
                   )
             )
       )
    )
)




;ESERCIZIO 2


(define string-set
  (lambda (stringa index char)   ;setta il char alla posizione index della stringa
    (let ((length (string-length stringa))
         )
         (if (= index 0)
             ;CASO BASE prima posizione della stringa
             (string-append (string char) (substring stringa 1))
             (string-append (substring stringa 0 1) ;primo carattere
                            (string-set (substring stringa 1) (- index 1) char)
             )
         )
      ) 
  )
) 

(define min-maiusc 
  (lambda (char)
    (integer->char (- (char->integer char) 32))
  )
)

(define standard-form
  (lambda (lista)
    (if (null? lista)   ;per cambiare da min a maiusc si somma/sottrae 32
        ; se la lista è vuota restituisce vuoto
        null
        (let ((k (- (length lista) 1))  ;k = lunghezza lista
              (firstChar (string-ref (car lista) 0))
              )
              (append
                 (list
                   (if (or (< (char->integer firstChar) 65) (> (char->integer firstChar) 90))
                            ;se il carattere non è maiuscolo lo trasforma in maiusc (-32)
                            (string-append (string (min-maiusc firstChar)) (substring (car lista) 1))
                            ;se è gia maiusc non fa nulla e restituisce la stringa originale
                            (car lista)
                   )
                 )
                 (standard-form (cdr lista)) ;ricorsione togliendo il primo elemento della lista  
              )
        )
    )
  )
)


;ESERCIZIO 3

(define btd-val                ;converte il simbolo nel suo valore numerico
  (lambda (c)
    (cond
      ((char=? c #\-)
       -1
      )
      ((char=? c #\+)
       1
      )
      (else 0 )
     )
  )
)


(define btr-val ;converte una stringa BTR in valore decimale
  (lambda (stringa)
     (let ( (k (string-length stringa))
          )
          (if (= k 0)
              0 ;CASO BASE stringa vuota
              (let (  (p (substring stringa 0 (- k 1))) ;tolto l'ultimo carattere
                      (t (string-ref stringa (- k 1)))  ;ultimo carattere
                   )
                   (+ (* 3
                          (btr-val p)
                      )
                      (btd-val t)
                   )
              )
          )
     )
  )
)

<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes

(define btr-val-tr ; val: intero
   (lambda (btr) ; btr: stringa di – / . / +
     (btr-val-rec btr 0 0)
 ))


 (define btr-val-rec
   (lambda (btr current index) ;current: intero decimale progressivo della conversione
     (let ((k (string-length btr))
           )
       (if (= k 0)
           current
           (let ((q (substring btr 0 (- k 1))) ;toglie l'ultimo carattere
                 (t (string-ref btr (- k 1)))  ;ultimo carattere da convertire
                 )
             (btr-val-rec q
                          (+ current (* (expt 3 index) (btd-val t)))
                          (+ 1 index)
             )
           )
       )
     )
 ))

;;ESERCIZIO 5

(define comb
   (lambda (k n)
      (if (= n 0)
          (list "")  ;numero max di caratteri raggiunto
          (let ( (u (if (= k 0)
                       ;terminato il numero di 1 da aggiungere
                       (comb k (- n 1))
                       ;viene aggiunto "1" perchè k viene decrementato
                       (comb (- k 1) (- n 1) ) 
                    )
                 )
                 ;viene aggiunto "0" perchè k non viene decrementato
                 (v (comb k (- n 1)))    
               )
               (append
                   (map (lambda (s) (string-append "1" s) )  u)
                   (map (lambda (s) (string-append "0" s) )  v)
               ) 
          )
      )
   ) 
)






