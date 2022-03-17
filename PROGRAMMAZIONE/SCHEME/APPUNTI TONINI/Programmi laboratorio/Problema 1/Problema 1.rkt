;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 1|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; DATI TRE ARGOMENTI IN INPUT (SOGGETTO, VERBO, COMPLEMENTO), LA PROCEDURA FRASE RESISTITUISCE UNA FRASE DI SENSO COMPIUTO

;; PROCEDURA PER INSERIRE L'ARTICOLO CORRETTO PRIMA DEL SOSTANTIVO
(define sostantivo
  (lambda (s)
    ;; verifico se il sostantivo è maschile singolare
    (if (string=? (substring s (- (string-length s) 1)) "o")
        (string-append "il " s)
        ;; verifico se il sostantivo è maschile plurale
        (if (string=? (substring s (- (string-length s) 1)) "i")
          (string-append "i " s)
          ;; verifico se il sostantivo è femminile singolare
          (if (string=? (substring s (- (string-length s) 1)) "a")
            (string-append "la " s)
            ;; se nessuna delle condizioni è vera, allora è femminile plurale
            (string-append "le " s)
            )
           )
         )   
   ))

;; PROCEDURA PER CONIUGARE CORRETTAMENTE UN VERBO AL SINGOLARE

(define verbo-singolare
  (lambda (v)
    ;; verifico se la desinenza del verbo è "are"
    (if (string=? (substring v (- (string-length v) 3)) "are")
        (string-append (substring v 0 (- (string-length v) 3)) "a")
        ;; verifico se la desinenza del verbo è "ere"
        (if (string=? (substring v (- (string-length v) 3)) "ere")
          (string-append (substring v 0 (- (string-length v) 3)) "e")
          ;; verifico se la desinenza del verbo è "ire"
            (if (string=? (substring v (- (string-length v) 3)) "ire")
              (string-append (substring v 0 (- (string-length v) 3)) "e")
              ;; se nessuna delle condizioni è vera, allora il verbo inserito è errato
              "Inserisci un altro verbo"
            )
           )
         )  
   ))

;; PROCEDURA PER CONIUGARE CORRETTAMENTE UN VERBO AL PLURALE

(define verbo-plurale
  (lambda (v)
    ;; verifico se la desinenza del verbo è "are"
    (if (string=? (substring v (- (string-length v) 3)) "are")
        (string-append (substring v 0 (- (string-length v) 3)) "ano")
        ;; verifico se la desinenza del verbo è "ere"
        (if (string=? (substring v (- (string-length v) 3)) "ere")
          (string-append (substring v 0 (- (string-length v) 3)) "ono")
          ;; verifico se la desinenza del verbo è "ire"
            (if (string=? (substring v (- (string-length v) 3)) "ire")
              (string-append (substring v 0 (- (string-length v) 3)) "ono")
              ;; se nessuna delle condizioni è vera, allora il verbo inserito è errato
              "Inserisci un altro verbo"
            )
           )
         )  
   ))

;; PROCEDURA PER COMPORRE LA FRASE FINALE

(define frase
  (lambda (s v c)
    (string-append
     (sostantivo s)
     " "
     ;; se il sostantivo è maschile singolare, allora coniugo il verbo al singolare
     (if (string=? (substring s (- (string-length s) 1)) "o")
        (verbo-singolare v)
        ;; se il sostantivo è maschile plurale, allora coniugo il verbo al plurale
        (if (string=? (substring s (- (string-length s) 1)) "i")
          (verbo-plurale v)
          ;; se il sostantivo è femminile singolare, allora coniugo il verbo al singolare
          (if (string=? (substring s (- (string-length s) 1)) "a")
            (verbo-singolare v)
            ;; se nessuna delle condizioni è vera, allora il verbo va coniugato al plurale (sostantivo femminile plurale)
            (verbo-plurale v)
            )
           )
         )
     " "
     (sostantivo c)
    )
  ) 
)

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (frase "gatto" "cacciare" "topi") → "il gatto caccia i topi"
;; (frase "mucca" "mangiare" "fieno") → "la mucca mangia il fieno"
;; (frase "sorelle" "leggere" "novella") → "le sorelle leggono la novella"
;; (frase "bambini" "amare" "favole") → "i bambini amano le favole"
;; (frase "musicisti" "suonare" "pianoforti") → "i musicisti suonano i pianoforti"
;; (frase "cuoco" "friggere" "patate") → "il cuoco frigge le patate"
;; (frase "camerieri" "servire" "clienti") → "i camerieri servono i clienti"
;; (frase "mamma" "chiamare" "figlie") → "la mamma chiama le figlie"