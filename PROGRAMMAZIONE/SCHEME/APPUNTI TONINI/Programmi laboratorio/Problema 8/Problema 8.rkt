;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 8|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "hanoi.ss" "installed-teachpacks")) #f)))
;; ROMPICAPO DELLA TORRE DI HANOI

;; PROCEDURA HANOI-MOVES CHE, DATI N DISCHI, RESTITUISCE LA SEQUENZA DI MOSSE CHE RISOLVE IL ROMPICAPO

(define hanoi-moves ; val: lista di coppie
  (lambda (n) ; n > 0 intero
    (hanoi-rec n 1 2 3)
    ))

(define hanoi-rec ; val: lista di coppie
  (lambda (n s d t) ; n intero, s, d, t: posizioni
    (if (= n 1)
        (list (list s d))
        (let ((m1 (hanoi-rec (- n 1) s t d))
              (m2 (hanoi-rec (- n 1) t d s))
              )
          (append m1 (cons (list s d) m2))
          ))
    ))

;; PROCEDURA HANOI-DISKS CHE, DATI DUE INTERI N,K, CON N>0 E 0<=K<=2^N-1, RESTITUISCE LA CONFIGURAZIONE AL TERMINE DELLA K-IMA MOSSA,
;; RAPPRESENTATA DAL NUMERO DI DISCHI PER CIASCUNA ASTICELLA

(define hanoi-disks   
  (lambda (n k)      
    (hanoi-disks-rec n k 1 2 3 0 0 0)
    ))

(define hanoi-disks-rec
  (lambda (n k s d t s-disks d-disks t-disks)      
    (cond
      ;; se n = 0 (numero di dischi), allora non ci sono dischi su nessuna asticella
      ((= n 0) (list (list s s-disks) (list d d-disks) (list t t-disks)))  
      ;; se k = 0 (numero della mossa), i dischi sono tutti sulla prima asticella
      ((= k 0) (list (list s n) (list d d-disks) (list t t-disks)))        
      ;; se k k < 2^(n-1) devo spostare i dischi da s a t
      ((< k (expt 2 (- n 1))) (hanoi-disks-rec (- n 1) k s t d (+ s-disks 1) t-disks d-disks)) 
      (else
       ;; se k = 2^(n-1), posso spostare il disco più grande su d
       ;; una volta spostato, si ritorna al problema di partenza, stavolta però da t a d, quindi riporto k < 2^(n-1)
       (hanoi-disks-rec (- n 1) (- k (expt 2 (- n 1))) t d s t-disks (+ d-disks 1) s-disks)
       )
      )))

;; PROCEDURA HANOI-PICTURE CHE, DATI DUE INTERI N,K, CON N>0 E 0<=K<=2^N-1, RESTITUISCE UN'IMMAGINE DELLA DISPOSIZIONE
;; DEI DISCHI AL TERMINE DELLA K-IMA MOSSA


;; (towers-background n) restituisce l’immagine del fondo e delle tre asticelle, dimensionando
;;                       questi elementi in modo appropriato per una torre di n dischi.


;; (disk-image d n p t) restituisce l’immagine del d-imo disco fra gli n utilizzati
;;                      (1 ≤ d ≤ n; la dimensione dei dischi cresce con d) quando questo
;;                      è collocato in corrispondenza all’asticella di posizione p (1 ≤ p ≤ 3)
;;                      all’altezza in cui si troverebbe se posto sopra altri t dischi.


;; (above <immagine1> <immagine2>) immagine che si ottiene sovrapponendo <immagine1> a <immagine2>,
;;                                 prestando attenzione al fatto che l’ordine dei due argomenti non è
;;                                 indifferente, in quanto la prima immagine si sovrappone alla seconda
;;                                 nascondendone alcune parti.



(define hanoi-picture       
  (lambda (n k)             
    (hanoi-picture-rec n k 1 2 3 0 0 0 (towers-background n) n) ;creo immagine iniziale e passo n per tenere un riferimento al numero di dischi
    )
  )
    
(define hanoi-picture-rec
  (lambda (n k s d t s-disks d-disks t-disks img disks)       
    ;; se n = 0, restituisco l'immagine
    (cond ((= n 0) img )    
          ((< k (expt 2 (- n 1))) (hanoi-picture-rec (- n 1) k s t d (+ s-disks 1) t-disks d-disks (above (disk-image n disks s s-disks) img) disks))
          (else
           (hanoi-picture-rec (- n 1) (- k (expt 2 (- n 1))) t d s t-disks (+ d-disks 1) s-disks (above (disk-image n disks d d-disks) img) disks)
          )
  )))

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (hanoi-disks 3 0) → '((1 3) (3 0) (2 0)) 
;; (hanoi-disks 3 1) → '((3 0) (2 1) (1 2))
;; (hanoi-disks 3 2) → '((2 1) (1 1) (3 1)) 
;; (hanoi-disks 3 3) → '((1 1) (3 2) (2 0)) 
;; (hanoi-disks 3 4) → '((3 2) (2 1) (1 0))
;; (hanoi-disks 3 5) → '((2 1) (1 1) (3 1)) 
;; (hanoi-disks 3 6) → '((1 1) (3 0) (2 2)) 
;; (hanoi-disks 3 7) → '((3 0) (2 3) (1 0))

;; (hanoi-picture 5 0) 
;; (hanoi-picture 5 13) 
;; (hanoi-picture 5 22) 
;; (hanoi-picture 5 31) 
;; (hanoi-picture 15 19705) 