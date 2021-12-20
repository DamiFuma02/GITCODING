;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es7_liste) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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

;restituisce la posizione dell'elemento x all'interno della stringa
(define position
  (lambda (x lista)
    (if (belong? x lista)
        (if (= x (car lista))
            ;se il numero coincide con il primo elemento restituisce l'indice
            0
            (+ (position x (cdr lista))
            1)  ;incrementa il contatore
        )
        #false
    )
  )
)

;restituisce una lista in ordine crescente senza ripetizioni aggiungendo x
(define sorted-ins
  (lambda (x lista)
    (let (  (listLength (- (length lista) 1))
             ) 
            (if (< x (car lista))
                     (cons x lista) ;aggiunge x come primo elemento della lista essendo il minore
                     (if (= x (car lista))
                        ;se gli elementi sono uguali si restituisce la lista inziale
                        lista 
                        (if (= listLength 0)
                            (append lista (list x))  ;CASO BASE la lista ha solo 1 elemento
                            (cons (car lista) 
                                 (sorted-ins x (cdr lista))
                            )
                        )
                     )
             )
      )
  )
)




(define sorted-list    ;restituisce una lista ordinata crescente senza ripetizioni
  (lambda (lista) 
    (let ((listLength (- (length lista) 1) ) 
         )
         (if (= listLength 0)   ;se la lista ha solo 1 elemento ritorna la lista stessa
              lista   ;CASO BASE
              (sorted-ins
                  (car lista)
                  (sorted-list (cdr lista))
              )
         )
    ) 
  )
)
