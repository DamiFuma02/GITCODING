;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Bin-Dec) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define val
  (lambda (str)
      (if (string=? str "0")
          0
          1
      )
  )
)


(define bin-dec
    (lambda (str)
        (let ((k (- (string-length str) 1)))
            (if (= k 0)
                (val str)
                (+ 
                    (* 2 (bin-dec (substring str 0 k)))
                    (val (substring str k))
                )
            )
        )
    )
)