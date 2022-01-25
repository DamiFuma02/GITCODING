;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname hamming) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))
(define matrix "0000000000000000")

(define popola
  (lambda (s  matrix  index)
    (cond ((string=? s "") matrix)
          ((> index (string-length matrix)) matrix)
          ((= (floor (/ (log index)(log 2))) (/ (log index)(log 2)))
              (popola s matrix (+ index 1))
          )
          (else
               (popola (substring s 1)
               (string-append (substring matrix 0 index) (substring s 0 1) (substring matrix (+ 1 index)))
               (+ index 1))
          )
    )
  )
)


(define count
   (lambda (matrix index)
      
   )
)


(define hamming
   (lambda (s matrix index)
        (
   )
)