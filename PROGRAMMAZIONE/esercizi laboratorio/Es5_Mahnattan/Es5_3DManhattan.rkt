;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es5_3DManhattan) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
(define 2D       ; valore: naturale
  (lambda (down right)  ; down, right: naturali
    (if (or (= down 0) (= right 0))
        ;se una delle 2 coordinate è 0, si ha 1 strada
        ;rettilinea fino alla destinazione
        1
        (+ (2D (- down 1) right)   ;procede verso il BASSO
           (2D down (- right 1))   ;procede verso DESTRA
        )
    )
  )
)


(define manhattan-3d
  (lambda (down right k)    ;k(3°dimensione), down, right: numeri interi
       (cond
              ;se almeno 1 dimensione è 0 si passa alla valutazione BIDIMENSIONALE
              ((= down 0)      
                   (2D right k)
              )
              ((= right 0)
                   (2D down k)
              )
              ((= k 0)
                   (2D down right)
              )
              (else
                   (+
                        (manhattan-3d (- down 1) right k)    ;procede verso il BASSO
                        (manhattan-3d down (- right 1) k)    ;procede verso DESTRA
                        (manhattan-3d down right (- k 1))    ;procede verso la 3°dimensione
                   )
              )
               
       )
  )
)