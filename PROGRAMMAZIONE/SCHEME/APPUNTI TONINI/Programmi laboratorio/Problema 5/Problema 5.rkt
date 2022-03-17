;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 5|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; DATI TRE INTERI NON NEGATIVI I,J E K, MANHATTAN-3D RESTITUISCE IL NUMERO DI PERCORSI DI DIVERSA LUNGHEZZA MINIMA ATTRAVERSO
;; UN RETICOLO TRIDIMENSIONALE FRA PUNTI (A E B) CHE DISTANO I,J E K UNITA LUNGO LE TRE DIREZIONI DEI COLLEGAMENTI

;; PROCEDURA PER RISOLVERE IL PROBLEMA IN UNO SPAZIO 2D

(define manhattan-2d
  (lambda (i j)
    (cond
      ;; se i e j sono 0 restituisco 0
      ((and(= i 0)(= j 0))0)
      ;; se A e B sono nella stessa riga c'e solo 1 percorso possibile
      ((= i 0) 1)
      ;; se A e B sono nella stessa colonna c'e solo 1 percorso possibile
      ((= j 0) 1)
      ;; se A e B non sono sulla stessa riga o colonna richiamo la funzione
      (else
       (+(manhattan-2d (- i 1) j)(manhattan-2d i (- j 1)))
       )
      )
   )
  )

;; PROCEDURA PER RISOLVERE IL PROBLEMA IN UNO SPAZIO 3D

(define manhattan-3d
  (lambda (i j k)
    (cond
      ;; se i,j e k sono 0 restituisco 0
      ((and(= i 0)(= j 0)(= k 0)) 0)
      ;; se A e B sono nella stessa riga richiamo la funzione 2D per j e k
      ((= i 0)(manhattan-2d j k)) 
      ;; se A e B sono nella stessa colonna richiamo la funzione 2D per i e k
      ((= j 0)(manhattan-2d i k))
      ;; se k = 0 richiamo la funzione 2D per i e j
      ((= k 0)(manhattan-2d i j)) 
      ;; se A e B non sono sulla stessa riga o colonna richiamo la funzione 3D
      (else
       (+(manhattan-3d (- i 1) j k)(manhattan-3d i (- j 1) k)(manhattan-3d i j (- k 1)))
       )
      )
   )
  )

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (manhattan-3d 0 0 7) → 1
;; (manhattan-3d 2 0 2) → 6
;; (manhattan-3d 1 1 1) → 6
;; (manhattan-3d 1 1 5) → 42
;; (manhattan-3d 2 3 1) → 60
;; (manhattan-3d 2 3 3) → 560