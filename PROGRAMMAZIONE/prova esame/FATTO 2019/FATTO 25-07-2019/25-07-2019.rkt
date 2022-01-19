;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 25-07-2019) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define lcs-list       ; val : lista di stringhe
       (lambda (u v)    ; u, v : stringhe
            (lcs-rec "" u v)
       )
)      

(define best    ;restituisce la stringa più lunga
  (lambda (a b)   ;a, b: LISTE
    (if (< (string-length (car a)) (string-length (car b)))
        b
        (if (> (string-length (car a)) (string-length (car b)))
             a
             (cons (car a) (list (car b)))
        )
    )
  )
)
 

(define lcs-rec
    (lambda (p u v)    ;p = LCS progressiva
        (cond
             ( (or (string=? u "") (string=? v ""))
                   (list p)
             )
             ( (char=? (string-ref u 0) (string-ref v 0))
                   (lcs-rec (string-append p (substring u 0 1)) ;aggiunto a p il carattere comune tra u v 
                            (substring u 1)
                            (substring v 1)
                   )
             ) 
             (else
                 (best (lcs-rec p (substring u 1) v)
                       (lcs-rec p u (substring v 1))
                 )
             )
        )
     )
)


;ESERCIZIO 2

(define paths
    (lambda (u v)
        (cond ( (string=? u "")   ;rimane solo la dimensione v
                (list v)
              )
              ( (string=? v "")   ;rimane solo la dimensione u
                (list u)
              )
              (else
                 (append
                    (map (lambda (s) (string-append (substring u 0 1) s )) (paths (substring u 1) v))
                    (map (lambda (s) (string-append (substring v 0 1) s )) (paths u (substring v 1)))
                 )
              )
        )
    )
)