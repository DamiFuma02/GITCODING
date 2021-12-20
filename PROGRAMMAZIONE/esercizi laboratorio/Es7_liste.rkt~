;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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
    (if (< x (car lista))
        (cons x lista) ;aggiunge x come primo elemento della lista essendo il minore
        (if (= x (car lista))
            ;se gli elementi sono uguali si restituisce la lista inziale
            lista 
            ; se x è maggiore invece toglie il primo elemento della lista e richiama se stessa
            (cons (car lista) 
                (sorted-ins x (cdr lista))
            )
        )
    )
  )
)

(define scambio
  (lambda (lista )    ;scambia il primo con indexesimo elemento della lista
    (cons
        
        (cadr lista)  ;2^elemento   = (car (cdr lista))
        (cons
                 (car lista)  ;1^elemento
                 (cddr lista) ;lista senza i primi 2 elementi = (cdr (cdr lista))
        )
    )
  )
)


(define before   ;restituisce gli elementi a sx della chiave
  (lambda (key lista)
        (let (  (listLength (- (length lista) 1)) (lastElement (car (reverse lista) ))
             )
             (if (= listLength 0)
                 lista
                 (if (= key (car lista))
                     null
                     (if  (= key lastElement)
                       (reverse (cdr (reverse lista)))
                       (before key (reverse (cdr (reverse lista))))
                     )
                 )
             )
        )
  )
)


(define after   ;restituisce gli elementi a dx della chiave
  (lambda (key lista)
    (let (  (listLength (- (length lista) 1)) (lastElement (car (reverse lista) ))
             )
             (if (= listLength 0)
                 lista
                 (if (= key lastElement)
                     null
                     (if  (= key (car lista))
                        (cdr lista)      ;toglie il primo elemento
                        (after key (cdr lista))     ;ricorsione togliendo il primo elemento
                     )
                 )
             )
        )
  )
)

 
 

(define minimo   ;trova l'elemento minore della lista
  (lambda (lista)
    (let (    (listLength (- (length lista) 1)) 
         )
      (if (= listLength 0)
          (car lista)     ;ha trovato il carattere minore
          (if  (< (car lista) (cadr lista))
             (minimo (cdr (scambio lista)))
             (minimo (cdr lista)) 
         )
      )
    )
  )
)


;restituisce la lista in ordine crescente e senza ripetizioni

(define sorted-list
  (lambda (lista)
    (let ((listLength (- (length lista) 1))  (min (minimo lista))
          )
         (if  (<= listLength 0)
              lista
              (sorted-ins min 
                   (sorted-list (append (before min lista) (after min lista)))
              )              
         ) 
         
    )
  )
)
