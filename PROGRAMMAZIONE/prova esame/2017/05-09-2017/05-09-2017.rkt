;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 05-09-2017) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))
(define lcs ; valore: lista di terne
   (lambda (u v) ; u, v: stringhe
     (lcs-rec 1 u 1 v)
 )
)

(define better
 (lambda (x y)
 (if (< (length x) (length y)) y x)
 ))

(define lcs-rec
     (lambda (i u j v)
         (cond ((or (string=? u "") (string=? v ""))
                   null
               )
               ((char=? (string-ref u 0) (string-ref v 0))
                  (cons (list i j (string-ref u 0))
                       (lcs-rec (+ i 1) (substring u 1) (+ j 1) (substring v 1))
                  ))
               (else
                   (better (lcs-rec i (substring u 1) j v)
                           (lcs-rec i u j (substring v 1)))))))