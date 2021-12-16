;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es7) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
(define belong?
  (lambda (x lista)
        (if (null? lista)
            #false
            (if (= x (car lista))
                ;se contiene il carattere restituisce true
                #true
                ;ricorsione togliendo il primo elemento
                (belong? x (cdr lista))
            )
        )
  )
)

(define position
  (lambda (x lista)
    (if (= x (car lista))
        ;se il numero coincide con il primo elemento restituisce l'indice
        0
        (+ (position x (cdr lista))
        1)  ;incrementa il contatore
    )
  )
)

;restituisce una lista in ordine crescente senza ripetizioni aggiungendo x
(define sorted-ins
  (lambda (x lista)
    (if (< x (car lista))
        (cons x lista) ;aggiunge x come primo elemento della lista essendo il minore
        (if (= x (car lista))
            ;se gli elementi sono uguali si restituisce la lista inziale
            lista 
            ; se x è maggiore invece toglie il primo elemento della lista e richiama se stessa
            (append (list (car lista)) 
                (sorted-ins x (cdr lista))
            )
        )
    )
  )
)


(define sorted-list
  (lambda (lista)
    
  )
)
