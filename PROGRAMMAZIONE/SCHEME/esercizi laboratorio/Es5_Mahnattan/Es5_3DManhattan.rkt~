;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2DManhattan) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
(define 2D       ; valore: naturale
  (lambda (down right)  ; down, right: naturali
    (if (or (= down 0) (= right 0))
        1
        (+ (2D (- down 1) right)
           (2D down (- right 1))
        )
    )
  )
)


(define manhattan-3d
  (lambda (i j k)
       (cond
              ((= i 0)
                   (2D j k)
              )
              ((= j 0)
                   (2D i k)
              )
              ((= k 0)
                   (2D i j)
              )
              (else
                   (+
                        (manhattan-3d (- i 1) j k)
                        (manhattan-3d i (- j 1) k)
                        (manhattan-3d i j (- k 1))
                   )
              )
               
       )
  )
)