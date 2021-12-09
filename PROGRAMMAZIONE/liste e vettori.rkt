;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |liste e vettori|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;lista vuota = null oppure '()
(define listaVuota null  ; or '()
)

;lista di numeri interi
(define lista
   (cons 1 ;aggiunge 1 alla lista successiva
         (list 2 3)  ;lista di elemeti numerici
   )
)
; (cons elemento lista)
;aggiunge elemento come primo elemento della lista

;(list  elemento elemento2)
;crea una lista contenente i 2 elementi inseriti


(car    ;restituisce il primo elemento della lista
   lista 
)

(cdr    ;restituisce la lista meno il (car list)
   lista  
)

(append    ;unisce le 2 liste
     lista
     '(1 2)
)
;ANALOGO a APPEND
(define unisciListe   ;restituisce una lista
  (lambda (lista1 lista2)
    (cond ( (null? lista1)  lista2
          )
          ( (null? lista2)  lista1
          )
          (else
              (cons
                 (car lista1)
                 (unisciListe (cdr lista1) lista2)
              )
          ) 
    )
  )
)

(define listaDiListe
  (lambda (list2)
    ;Inserisce list2 all'interno di list1
    (list 1 2 3 list2)
  )
)

(list-ref   ;restituisce l'elemento alla pos 2 della lista
     lista
     2
)
;ANALOGO a list-ref

(define list-pos
    (lambda (lista index)  ;lista in cui cercare, index intero
      (let ( (k (- (length lista) 1)) ) ; k = lunghezza lista
           (cond
              ((or (< index 0) (> index k))
                 ;INDICE NON VALIDO
                 '()
               )
              ((= index 0)
                  (car lista)   ;restituisce il primo elemento della lista
               )
              (else
               ;ricorsione
               ;toglie il primo elemento della lista e decrementa i
                  (list-pos (cdr lista) (- index 1))
               ;quando i = 0 restituisce il (car listaFINALE) = (list-ref LISTAINZIALE i)
                  ;LISTA FINALE  = (cdr listaINZIALE) ripetuto i VOLTE
                  
               )
           )
      )
    )
)
 

(reverse lista)    ;INVERTE gli elementi della lista
;ANALOGA a REVERSE    Non EFFICIENTE a causa delle grandi quantità di operazioni
(define invertiLista
  (lambda (lista)
     (if (null? lista)
         '()
         (unisciListe
             (invertiLista (cdr lista))
             (list (car lista))   ; il primo carattere va messo per ultimo
         )
      )
  )
)

(define rovescia_RIC
  (lambda (lista1 listaR)
    (if (null? lista1)
        listaR
      (rovescia_RIC (cdr lista) (cons (car lista1 listaR ) )  
    )
  )
))

(define rovescia
  (lambda (list1)
      (rovescia_RIC list1 '())
  )
)


(define next   ;restituisce il successivo di un numero
  (lambda (x)
     (+ x 1)
  )
)

(define mappa
  (lambda (proc lista)    ;proc = procedura usata
                          ; lista = lista di numeri/caratteri
    (let ((k (- (length lista) 1))
         )
         (if (= k 0)
             (list (proc (list-ref lista k)))
             (append
                   (list (proc (car lista))     )
                   (mappa proc (cdr lista))
             )
         )
    )
  )
)


;; COMPOSIZIONE FUNZIONALE
;; f: D-> E      g: E -> F,      h: D -> F

;; per ogni x in E h(x) = g(f(x))

(define compFunc
  (lambda (g f)  ;g e f sono due funzioni
    (lambda (x)
      (g (f x))
    )
  )
)





 