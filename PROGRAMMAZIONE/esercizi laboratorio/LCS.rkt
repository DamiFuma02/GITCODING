;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname LLCS) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
; LCS = LONGEST COMMON SUBSEQUENCE
(define llcs     ;determina la lunghezza (INTERO) della LCS
  (lambda (a b)   ;a b = STRINGHE
       (cond
              ((or (string=? a "") (string=? b "") )   ;se una delle 2 stringhe è vuota
                      0    ;la LCS di "" "testoCASUALE" è "", perciò la sua lunghezza è 0
               )
              ((char=? (string-ref a 0) (string-ref b 0))
                    ;se le due stringhe hanno lo stesso primo carattere
                     (+ 1 (llcs (substring a 1) (substring b 1)) )
               )
              (else   ;le due stringhe iniziano con 2 char diversi
                   (max
                        (llcs (substring a 1) b)
                        (llcs a (substring b 1))
                   ) 
               )
       )
  )
)


(define longer    ;restituisce la stringa più lunga tra le 2
  (lambda (str1 str2)  ;STRINGA
     (let (
              (k1 (- (string-length str1) 1))
              (k2 (- (string-length str1) 1))
          )
          (if (< k1 k2)
              str2    ;str1 < str2
              str1    ;str1 >= str2
          )
     )
  )
)



;esempio "13242132" "2423142" stringhe causali di 4 simboli
;i simboli delle stringhe possono essere anche diversi

;LCS determina la sottosequenza comune ordinata da SX a DX delle due stringhe inserite
(define lcs      ;restituisce la STRINGA LCS
  (lambda (a b)   ;a b = STRINGHE
    (cond
       ((or (string=? a "") (string=? b ""))
           ""  ;se una stringa è vuota  si restituisce LCS = ""
        )
       ( (char=? (string-ref a 0) (string-ref b 0)) ;le due stringhe iniziano con lo stesso char
         ; carattere uguale + la LCS delle due stringhe senza il primo carattere
         (string-append
                  (substring a 0 1)
                  (lcs (substring a 1) (substring b 1))
         )   ;restituisce la stringa contente il carattere comune
        )
       (else
        ;se le due stringhe inziano con char diversi
        ;restituisce la stringa più lunga tra due LCS
           (longer
                (lcs (substring a 1) b)    ;toglie il primo char di a 
                (lcs a (substring b 1))    ;toglie il primo char di b
           ) 
        )
    ) 
  )
)


