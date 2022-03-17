;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Rocorsione di coda|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; moltiplicazione 

;;(define mul
;;  (lambda (m n)
;;    (if (= n 0)
;;        0
;;        (+ (mul m (- n 1)) m)
;;    )
;; )
;;)

;; moltiplicazione con ricorsione di coda

(define mul
  (lambda (m n p)                    ;;per fare una ricorsione di coda, è bastato aggiungere un parametro e togliere la somma sulla chiamata ricorsiva
    (if (= n 0)                      ;;Una ricorsione, per essere di coda, deve essere l'ultima cosa che viene eseguita 
        p                            ;;Essendo che usando mul servono 3 parametri, va creata una nuova funzione (mul2)con 2 parametri, che richiami la prima funzione
        (mul m (- n 1) (+ p m))      ;;così da poter inserire 0 come terzo parametro
    )
 )
)

(define mul2
  (lambda (m n)
    (mul m n 0)
    ))
