;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es_9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;PARTE 1

;CIFRARIO DI CESARE DA AMIUSCOLO A MINUSCOLO

(define maiuscTominusc      ;numero da sommare a (char->integer #\X)
  (- (char->integer #\a)(char->integer #\A))
)


(define alfabeto    ;20 CARATTERI
  "ABCDEFGHILMNOPQRSTVX"
)


(define rotate   ;shifta di key posizioni a DX il char secondo l'alfabeto
  
  (lambda (i key char) ;i: contatore di ricerca in alfabeto
    (cond ( (= i (string-length alfabeto))
            ;il contatore ha raggiuinto il limite e il carattere non è stato trovato
            char
          )
          (  (char=? (string-ref alfabeto i) char)
             ;i = posizione in cui è stato trovato il char
             ;CARATTERE TROVATO, viene restituito il carattere key posizioni a DX
             (if (> (+ i key) (- (string-length alfabeto) 1))
                   ;se la posizione da trovare è  fuori range nell'alfabeto si torna indietro ai caratteri inizali
                   (string-ref alfabeto (- (+ i key) (string-length alfabeto)))
                   (string-ref alfabeto (+ i key)) 
             )
          )
          (else
                (rotate (+ i 1) key char)
          )
    )
  )
)

;restituisce la funzione di crittazione completa da applicare a un carattere
(define regola    ;valore procedurale
  (lambda (key)
 
      ;funzione di crittazione + MAIUSC -> MINUSC
      (lambda (c)   ;valore procedurale restituito dalla funzione
                    ;c : CHAR MAISUCOLO da criptare
         (integer->char (+ (char->integer (rotate 0 key c)) maiuscTominusc))
         
      )
  )
)

(define rimuoviSpazi ;toglie i caratteri #\space da STRINGA
     (lambda (s) ;s: STRINGA
          (if (string=? s "")
              s ;FINITI I CARATTERI
              (if (char=? (string-ref s 0) #\space)
                  (rimuoviSpazi (substring s 1)) ;continua a togliere gli spazi
                  (string-append (substring s 0 1) ;primo carattere
                             (rimuoviSpazi (substring s 1))
                  )
              )
          )
     )
)

;restituisce la FRASE (Stringa) inserita criptata grazie a reg
;reg = (regola key)    0<= key <= 19 
;impostando key = 0 la funzione restituirà solo la conversione MAIUSC->minusc
;se key = 19 ogni carattere viene sostituito con il suo precendente nell'alfabeto
(define crittazione
      (lambda (reg msg) ;reg: funzione di crittazione restituita dalla funzione regola
          (let ( (listaMSG (string->list (rimuoviSpazi msg))) ;crea una lista di caratteri della stringa 
               )
               (list->string (map reg
                                  listaMSG
                             )
               )
          )
      )
)



; ESERCIZIO 2

;; PROBLEMA PROCEDURA H

;; Le operazioni di addizione (add), moltiplicazione (mul), elevamento a potenza (pow) nel dominio dei numeri naturali
;; possono essere definite una dall’altra in modo induttivo, a partire dalla funzione successore (succ):
;; add( m, 0 ) = m
;; add( m, n ) = succ( add(m,n–1) ) per n > 0
;; mul( m, 0 ) = 0
;; mul( m, n ) = add( m, mul(m,n–1) ) per n > 0
;; pow( m, 0 ) = 1
;; pow( m, n ) = mul( m, pow(m,n–1) ) per n > 0


;; PROCEDURA SUCCESSORE NELLA FORMA succ(v) = v+1

(define succ  
  (lambda (v)  
    (+ v 1)))

;; ;; PROCEDURA ADDIZIONE RICAVATA DA SUCC

(define add-from-succ        
  (lambda (m n)    
    (if (= n 0)
        m
        (succ (add-from-succ m (- n 1)))
      )))

;; PROCEDURA MOLTIPLICAZIONE RICAVATA DA ADD

(define mul-from-add  
  (lambda (m n)  
    (if (= n 0)
        0
        (add-from-succ m (mul-from-add add m (- n 1)))
        )))

;; PROCEDURA POTENZA RICAVATA DA MUL

(define pow-from-mul
  (lambda (m n)
    (if (= n 0)
        1
        (mul-from-add m (pow-from-mul m (- n 1)))
        )))


;; Se si sostituisce la funzione di un argomento succ(v) = v+1 con la funzione di due argomenti s2(u,v) = v+1, allora
;; tutte queste definizioni hanno una struttura comune:
;; h( m, 0 ) = f(m)
;; h( m, n ) = g( m, h(m,n–1) ) per n > 0


;; PROCEDURA SUCCESSORE NELLA FORMA s2(u,v) = v+1

(define succ2
  (lambda (u v)
    (+ v 1)))

;; FUNZIONE IDENTITA I (ADDIZIONE)

(define i 
  (lambda (x)
    ;; assume il valore dell'argomento
    x
 ))

;; FUNZIONE IDENTITA Z (MOLTIPLICAZIONE)

(define z 
  (lambda (x)
    ;; assume valore costante 0
    0
 ))

;; FUNZIONE IDENTITA U (POTENZA)

(define u 
  (lambda (x)
    ;; assume valore costante 1
    1
 ))

;; PROCEDURA H (f è la funzione identità, g è la procedura da applicare)

(define H
  (lambda (f g)  
    (lambda (m n)
      ;; verifico se n è uguale a 0
      (if (= n 0)
          ;; se vero, restituisco la funzione identità 
          (f m)
          ;; se falso, h( m, n ) = g( m, h(m,n–1) )
          (g m ((H f g) m (- n 1))) 
          )
      ))) 

;; PROCEDURA ADD 

(define add
  (H i succ2))

;; PROCEDURA MUL

(define mul
  (H z add))

;; PROCEDURA POW

(define pow
  (H u mul))


;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (add 4 3)
;; (mul 7 4)
;; (pow 2 3)