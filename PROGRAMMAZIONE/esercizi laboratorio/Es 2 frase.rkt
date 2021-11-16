;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname prova_frase) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define totale "")    ; stringa totale che contiene la frase coniugata

(define complOgg      ;questa funzione aggiunge il compl ogg alla frase sogg + verbo
  (lambda (totale oggetto)
    (if (or (string=? (substring oggetto (- (string-length oggetto) 1)) "i") (string=? (substring oggetto (- (string-length oggetto) 1)) "e"))
        (if (string=? (substring oggetto (- (string-length oggetto) 1)) "i")
            (string-append totale "i " oggetto);l'oggetto è maschile plurale
            (string-append totale "le " oggetto);l'oggetto è femminile plurale
         )
        (if (string=? (substring oggetto (- (string-length oggetto) 1)) "o")
            (string-append totale "il " oggetto)        ;l'oggetto è maschile singolare
            (string-append totale "la " oggetto)       ;l'oggetto è femminile singolare
         )
     )
   )
 )

(define coniugaVerbo    ;questa funzione coniuga il verbo in base al soggetto
  (lambda (totale verbo oggetto)
    (if (or (char=?(string-ref totale 1) #\l) (char=?(string-ref totale 1) #\a))
        (complOgg (string-append totale (substring verbo 0 (-(string-length verbo)2)) " " ) oggetto)
           ;l'articolo è singolare, perciò si coniuga il verbo alla 3 pers singolare
        (complOgg (string-append totale (substring verbo 0 (-(string-length verbo)2)) "no " ) oggetto)   ;l'articolo è plurale, perciò il verbo va in 3 pers plurale
     )
   )
)


(define frase    ;funzione totale chiamata dall'utente
  (lambda (soggetto verbo oggetto)
      ; il primo if verifica se il soggetto è plurale
      (if (or (string=? (substring soggetto (- (string-length soggetto) 1)) "i") (string=? (substring soggetto (- (string-length soggetto) 1)) "e"))
          ; controlla il genere
          (if (string=? (substring soggetto (- (string-length soggetto) 1)) "i")      
              (coniugaVerbo (string-append totale "i " soggetto " ") verbo oggetto)
              
              (coniugaVerbo (string-append totale "le " soggetto " ") verbo oggetto);altrimenti è femminile plurale
          )
          ; il soggetto è singolare, e viene determinato il genere
          (if (string=? (substring soggetto (- (string-length soggetto) 1)) "o")      ;viene eseguita se è valida l'or tra le due condizioni espresse
              (coniugaVerbo (string-append totale "il " soggetto " ") verbo oggetto)          ;se termina con "o" è maschile singolare
              (coniugaVerbo (string-append totale "la " soggetto " ") verbo oggetto)          ;altrimenti è femminile singolare
          )
      )
   )


)