;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 7|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; OPERAZIONI SULLE LISTE UTILIZZANDO SOLO LA COSTANTE NULL E LE PRIMITIVE NULL?, CAR, CDR, CONS

;; PROCEDURA BELONG? CHE, DATI UN INTERO X E UNA LISTA ORDINATA S, VERIFICA SE X è UN ELEMENTO DI S

(define belong?
  (lambda (x S) ;; x: intero     S: lista ordinata
      (cond 
         ;; verifico se la lista è vuota
         ((null? S) false)
         ;; verifico se x appartiene alla lista
         ((= x (car S)) true)
         (else
          ;; richiamo la procedura con il resto della lista in input (cdr)
          (belong? x (cdr S))
          )
      ) 
  )) 
 

;; PROCEDURA POSITION CHE, DATI UN INTERO X E UNA LISTA ORDINATA E SENZA RIPETIZIONI S, RESTITUISCE LA POSIZIONE (INDICE) DI X IN S

(define position
  (lambda(x S) ;; x: intero     S: lista ordinata
    ;; verifico se l'elemento appartiene alla lista utilizzando belong?
    (if(belong? x S)
       ;; se vero, cerco l'elemento nella lista
       (if(= x (car S))
          ;; se vero, restituisco 0
          0
          ;; se falso, sommo uno e richiamo la procedura con il resto della lista in input (cdr)
          (+ 1 (position x (cdr S)))
        )
       ;; se falso, allora significa che l'elemento non è in lista
       "L'elemento non è nella lista"
    )
  ))
  
;; PROCEDURA SORTED-INS CHE, DATI UN INTERO X E UNA LISTA ORDINATA E SENZA RIPETIZIONI S, RESTITUISCE LA LISTA ORDINATA E SENZA RIPETIZIONI CHE CONTIENE X E TUTTI GLI ELEMENTI DI S

(define sorted-ins
  (lambda(x S) ;; x: intero     S: lista
    (cond
      ;; se la lista è vuota, costruisco una lista con x
      ((null? S) (list x))
      ;; se x è uguale al primo elemento della lista, richiamo la funzione passando il primo elemento della listae il resto della lista
      ((= x (car S)) (sorted-ins (car S) (cdr S)))
      ;; se x è minore del primo elemento della lista, lo aggiungo alla lista
      ((< x (car S)) (cons x S))
      (else
       ;; se x è maggiore del primo elemento della lista, richiamo la funzione passando x e il resto della lista
       (cons (car S) (sorted-ins x (cdr S)))
      )
     )
  ))

;; PROCEDURA SORTED-LIST CHE, DATA UNA LISTA SENZA RIPETIZIONI S, RESTITUISCE LA LISTA ORDINATA E SENZA RIPETIZIONI S' CHE CONTIENE TUTTI E SOLI GLI ELEMENTI DI S

(define sorted-list
  (lambda (S) ;; S: lista
    (cond
      ;; se la lista è vuota, resrituisco messaggio di errore
      ((null? S) "La lista è vuota")
      ;; se c'e solo un elemento, restituisco la lista
      ((null? (cdr S)) S)
      (else
       ;; se la lista non è vuota e ha più di un elemento, uso sorted-ins per riordinare la lista
       (sorted-ins (car S) (sorted-list (cdr S)))
       )
   )
 )) 

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (belong? 18 '()) → false
;; (belong? 18 '(5 7 10 18 23)) → true
;; (belong? 18 '(5 7 10 12 23)) → false
 
;; (position 7 '(7 8 24 35 41)) → 0
;; (position 35 '(7 8 24 35 41)) → 3
;; (position 41 '(7 8 24 35 41)) → 4

;; (sorted-ins 24 '()) → '(24)
;; (sorted-ins 5 '(7 8 24 35 41)) → '(5 7 8 24 35 41)
;; (sorted-ins 24 '(7 8 24 35 41)) → '(7 8 24 35 41)
;; (sorted-ins 27 '(7 8 24 35 41)) → '(7 8 24 27 35 41)

;; (sorted-list '(35 8 41 24 7)) → '(7 8 24 35 41)