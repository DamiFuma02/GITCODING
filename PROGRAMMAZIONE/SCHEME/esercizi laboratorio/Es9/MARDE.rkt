;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Mod_Crittografia) (read-case-sensitive #t) (teachpacks ((lib "drawing.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawing.ss" "installed-teachpacks")) #f)))
(define posA (char->integer #\A))

;;  CIFRARIO DI CESARE | CRITTOGRAFIA

(define A-L "ABCDEFGHILMNOPQRSTVX")        ; stringa contenente l'Alfabeto Latino

(define crittazione           ; argomento "reg" è di tipo procedurale (deriva da una procedura)
  (lambda (msg reg)           ; msg: string | reg: procedura [lettera->lettera]
    (if (string=? msg "")
        ""
        (string-append
          (string (reg (string-ref msg 0)) )      ; la regola (reg) andrà a crittografare il primo carattere della stringa
          (crittazione (substring msg 1) reg)     ; funzione che andrà a crittografare il resto del messaggio ricorsivamente
        )
        
    )
  )
)


(define regola-cesare       ; val: procedura [lettera->lettera]
  (lambda (rot)             ; rot: intero non negativo

    (lambda (x)
      (string-ref A-L
        (let ( (i (+ rot (trova x 0))) )
          (if (< i (string-length A-L))
              i
              (- i 20)
          )
        )
    ))
    
))

(define trova             ; val: intero
  (lambda (x i)           ; x: carattere | i: contatore
    (if (char=? x (string-ref A-L i))          ; controllo se la lettera è presente nell'alfabeto
        i
        (trova x (+ i 1))
    )
))








  

