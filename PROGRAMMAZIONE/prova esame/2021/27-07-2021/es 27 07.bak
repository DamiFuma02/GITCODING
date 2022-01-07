;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |es 27 07|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define ufo
     (lambda (bin) ; bin è una stringa di 0/1 che inizia con il bit '1' (bit più significativo = 1)
         (let (   (k (- (string-length bin) 1))
              )
              (cond ( (= k 0) ; bin = "1"
                           1
                    )
                    ((char=? (string-ref bin k) #\0)   ;controlla l'ultimo carattere
                          (- (* 2 (ufo (substring bin 0 k))) 1)
                    )
                    (else
                         (+ (* 2 (ufo (substring bin 0 k))) 1)
                    )
              )
         )
      )
) 