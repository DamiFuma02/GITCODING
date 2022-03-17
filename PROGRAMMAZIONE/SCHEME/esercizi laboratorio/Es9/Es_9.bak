;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es_9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;PARTE 1

;CIFRARIO DI CESARE DA AMIUSCOLO A MINUSCOLO

(define maiuscTominusc      ;numero da sommare a (char->integer #\X)
  (- (char->integer #\a)(char->integer #\A))
)

(define posz
  (char->integer #\z)
)

(define alfabeto    ;20 CARATTERI
  "ABCDEFGHILMNOPQRSTVX"
)

(define regola    ;valore procedurale
  (lambda (key)

      ;funzione di crittazione + MAIUSC -> MINUSC
      (lambda (c)   ;valore procedurale restituito dalla funzione
                    ;c : CHAR da criptare
         (let ((criptedASCII (+ maiuscTominusc (+ (char->integer x) key)))
              )
         )
         (integer->char
             (if (criptedASCII <= posz)
                 criptedASCII;carattere valido
                 (- criptedASCII 26) 
             )
         )
      )
  )
)

(define msgValido?    ;controlla se la stringa è valida nell'alfabeto definito
   (lambda (msg)
       (let ( (lungh (- (string-length msg) 1))
            )
            (if (char=? (string-ref msg lungh) ())
            )
       )
   )
)


(define crittazione
  (lambda (msg regola)
      (if (string=? msg "")
          ""
          (string-append
                 (string (regola (string-ref msg 0)))   ;cripta il primo carattere
                 (crittazione (substring msg 1) regola)
          )
      )
  )
)

