;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 13-07-2021) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define pattern-repeats ; val : intero: numero di occorrenza della stringa s dentro p
    (lambda (p s) ; p ≠ "", s : stringhe
       (repeats-rec p s
                    (string-length p) ;lunghezza del pattern da cercare
                    0 ;numero iniziale di occorrenze
       )
    )
)


(define repeats-rec ; val : intero
     (lambda (p s k r) ; p ≠ "", s : stringhe, k = len(p), r : numero di occorrenze iniziali
          (cond (   (< (string-length s) k)
                    ;la stringa pattern è più lunga della stringa in cui cercare
                    ;perciò restituisce il numero di occorrenza calcolate finora
                    r
                )
                (   (string=? p (substring s 0 k))
                    ;controlla se p è uguale a una sottostringa di s lunga come p
                    (repeats-rec p (substring s 1) k
                                 (+ r 1) ;aggiorna il numero di occorrenze
                    )
                )
                (else
                 ;richiama se stessa togliendo il primo carattere per ricercare
                    (repeats-rec p (substring s 1) k r)
                )
          )
     )
)

;ESERCIZIO 2

(define parity-check ; val : stringa binaria
     (lambda (w) ; w : lista non vuota di stringhe binarie della stessa lunghezza
         (parity-rec (cdr w) (car w))
     )
)


(define match  ;restituisce la stringa con i valori di parità
  (lambda (s p)
     (if (string=? s "")
         "";STRINGA VUOTA
         (if (char=? (string-ref s 0) (string-ref p 0))
             ;i primi due caratteri sono uguali perciò si aggiunge 0
             (string-append  "0" ;si aggiunge 1
                             (match (substring s 1) (substring p 1)) ;senza il primo carattere
             )
             ;DIVERSI si aggiunge 1
             (string-append  "1" 
                             (match (substring s 1) (substring p 1)) ;senza il primo carattere
             )
         )
     )
  )
)

(define parity-rec ; val : stringa binaria
     (lambda (w p) ; w : lista di stringhe binarie, p : prima stringa binaria della lista precedente
         (if (null? w)
              p
              (parity-rec (cdr w) (match (car w) p))
         )
      )
)