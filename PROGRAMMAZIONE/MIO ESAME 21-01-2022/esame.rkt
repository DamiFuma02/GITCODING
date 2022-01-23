;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname esame) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))


(define m-rec
  (lambda (i j k v)
      (cond ((= i 0)
                  (if (> j k) null (list (make-string j #\1)) )
            )
            ((= j 0)
                  (list (make-string i #\0))
            )
            ((= v 0)
              (map (lambda (s) (string-append "0" s)) (m-rec (- i 1) j k k))
            )
            (else
              (append
                   (map (lambda (s) (string-append "0" s)) (m-rec (- i 1) j k v))
                   (map (lambda (s) (string-append "1" s)) (m-rec i (- j 1) k (- v 1)))
              )
            )
      )
  )
)


;restituisce la liste di tutti i possibili percorsi di mahnattan
;in cui fare i spostamenti verso il basso "0"    
;e un massimo di k spostamenti consecutivi di j verso DX "1"
;(m 2 2 1) --> (list "0101" "1001" "1010")
(define m
  (lambda (i j k)
    (m-rec i j k k)))