;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 9|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "hanoi.ss" "installed-teachpacks")) #f)))
;; PROBLEMA DEL CIFRARIO DI CESARE

;; ALPHABET è LA STRINGA CONTENENTE TUTTI I CARATTERI DELL'ALFABETO LATINO

(define alphabet "ABCDEFGHILMNOPQRSTVX")
  
;; PROCEDURA CHAR-POS CHE, DATI IN INPUT IL CARATTERE DA CERCARE E UN INDICE, RESTITUISCE LA POSIZIONE DEL CARATTERE

(define char-pos           
  (lambda (c i)
    ;; verifico se il carattere da cercare è uguale al carattere in posizione i nella stringa alphabet
    (if (char=? c (string-ref alphabet i))
        ;; se vero, restituisco l'indice i (posizione del carattere)
        i
        ;; se falso, richiamo la procedura incrementando l'indice
        (char-pos c (+ 1 i))
        )
    ))

;; PROCEDURA ENCRYPTION CHE, DATA UNA CHIAVE COMPRESA NELL'INTERVALLO 0-19, RESTITUISCE LA CORRISPONDENTE FUNZIONE DI CRITTAZIOZIONE (PROCEDURA CON VALORI PROCEDURALI)

(define encryption          
  (lambda (key)   
    (lambda (s)   ;; s: stringa che si vuole crittare
      ;; verifico se la stringa è vuota
      (if (string=? s "")
          ;; se vero, restituisco la stringa vuota
          ""
          ;; se falso
          ;; pos è la posizione del carattere che voglio crittare (procedura char-pos con indice inizializzato a 0)
          (let ((pos (char-pos (string-ref s 0) 0)))  
            (string-append
             ;; sommando la posizione del carattere da crittare e la chiave, ottengo la posizione del carattere crittato
             (string(string-ref (string-append alphabet alphabet) (+ key pos)))
             ;; richiamo la procedura rimuovendo il carattere appena crittato
             ((encryption key)(substring s 1)))
            )
          )
      )))

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; ((encryption 3) "ALEAIACTAESTIVLIVSCAESARDIXIT") → DOHD NDFAD HXA NBONBX FDHXDV GNCNA



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


