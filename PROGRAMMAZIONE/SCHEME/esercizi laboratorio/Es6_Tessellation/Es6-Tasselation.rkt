;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es6-Tasselation) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;USARE IL TEACHPACK drawing.ss


(set-tessellation-shift-step!)

(define L-tessellation
  (lambda (n)
        (if (= n 1)
            L-tile
            (glue-tiles (glue-tiles (glue-tiles (L-tessellation (/ n 2)) (shift-right (quarter-turn-right (L-tessellation (/ n 2))) n))
                                    (shift-down (shift-right (L-tessellation (/ n 2)) (/ n 2)) (/ n 2)))
                        (shift-down (quarter-turn-left (L-tessellation (/ n 2))) n)       
            )
        )
  )
)

;; L-TASSELLATION, DATA UNA LUNGHEZZA DEL LATO PIU CORTO DELLA REGIONE DA COPRIRE (POTENZA DI 2) RESTITUISCE L'IMMAGINE DELLA REGIONE TASSELLATA

(define L-tessellation
  (lambda (p) ;; p: intero (deve essere per forza una potenza di 2)
          ;; controllo se la lunghezza di p è uguale a 1 (caso base)
          (if (= p 1)
             ;; se vero, restituisco la piastrella
             L-tile
             ;se falso, continuo a manovrare le piastrelle
             (glue-tiles
                (glue-tiles
                 ;; mosse per comporre le parti esterne della figura
                 (L-tessellation (quotient p 2))
                 (shift-right (shift-down (L-tessellation (quotient p 2)) (quotient p 2))(quotient p 2))
                )
                ;; mosse per comporre le parti interne della figura
                (glue-tiles
                 (shift-right (quarter-turn-right (L-tessellation (quotient p 2))) p)
                 (shift-down (quarter-turn-left (L-tessellation (quotient p 2))) p)
                )   
             )
          ) 
  ))

(set-tessellation-shift-step!)

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (L-tessellation 1)
;; (L-tessellation 2)
;; (L-tessellation 4)
;; (L-tessellation 16)