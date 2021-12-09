;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es3) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define f    ;; per ogni x y tale che 0 < x <= y
             ;si dimostra che la formula ottenuta è
             ;y^2 - (x-1)^2
  (lambda (x y)    ;;; x <= y
    (if (= x y)
        (+ x y -1)  
        (let ((z (quotient (+ x y) 2))
              )
          (+ (f x z) (f (+ z 1) y))
        )
    )
  )
)