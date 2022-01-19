;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Argomenti procedurali|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; Procedure con argomenti procedurali

(define ascii-A (char->integer #\A))
(define ascii-Z (char->integer #\Z))
;; Codice-cesare restituisce la lettera che si trova 3 posizioni più avanti
(define codice-cesare ;;val: lettera
  (lambda (c)   ;;c: lettera maiuscola
    (let ((k (+ (char->integer c) 3)))
      (integer->char
      (if (> k ascii-Z)
          (- k 26) ;;26 è il numero di lettere inglesi dell'alfabeto
          k)))
    ))
;; Codice-augusto restituisce la lettera che si trova affianco
(define codice-augusto ;;val: lettera
  (lambda (c)   ;;c: lettera maiuscola
    (let ((k (+ (char->integer c) 1)))
      (integer->char
      (if (> k ascii-Z)
          (- k 26) ;;26 è il numero di lettere inglesi dell'alfabeto
          k)))
    ))

(define crittazione-cesare ;;val: stringa
  (lambda (msg regola)    ;;stringa di lettere maiuscole
    (if (string=? msg "")
        ""
        (string-append (string (regola (string-ref msg 0))) 
        (crittazione-cesare (substring msg 1) regola))
        )
    ))


;; rotazione-cesare 3 --> codice-cesare
;; rotazione-cesare 1 --> codice-augusto
;; rotazione-cesare 0 --> funzione identica

;;rotazione-cesare restituisce una prcedura. Il parametro rot indica di quante posizioni devo spostarmi.
(define rotazione-cesare ;;val: procedura da carattere a carattere
  (lambda (rot)   ;;rot: intero nell'intervallo 0 25
    
    (lambda (c)
    (let ((k (+ (char->integer c) rot)))
      (integer->char
      (if (> k ascii-Z)  
          (- k 26) ;;26 è il numero di lettere inglesi dell'alfabeto
          k))))
    ))

;; Procedure con argomenti e valori procedurali
;; Rotazione inversa decritta la stringa (risale alla stringa iniziale)
(define rotazione-inversa ;;restituisce la procedura inversa a rotazione cesare
  (lambda (regola)
    (let ((rot(- (char->integer (regola #\A)) ascii-A))  ;;serve per ottenere il numero della rotazione di cesare (rotazione-cesare n)
          )
      (rotazione-cesare (- 26 rot)) ;;sottraendo rot(numero della rotazione-cesare) a 26, risalgo alla posizione della lettera di partenza
      )                             ;; es: lettera originale A (posizione 1), applico rotazione-cesare 3 (ottengo la D (posizione 4))
    ))                              ;; il let mi restituisce 3, (- 26 3)= 23. Partendo alla D, se mi sposto di 23 posizioni ottengo nuovamente la A.
