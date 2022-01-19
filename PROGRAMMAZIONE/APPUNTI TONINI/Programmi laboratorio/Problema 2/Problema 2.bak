;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 2|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; Per eseguire questo codice e' necessario
;; utilizzare il TeachPack "drawings.ss"


;; Square-Cross Puzzle
;;
;; Hai a disposizione due forme base:
;;
;;   larger-tile
;;
;;   smaller-tile
;;
;; Puoi spostare e combinare le forme con le operazioni:
;;
;;   (shift-down <forma> <passi>)
;;
;;   (shift-right <forma> <passi>)
;;
;;   (quarter-turn-right <forma>)
;;
;;   (quarter-turn-left <forma>)
;;
;;   (half-turn <forma>)
;;
;;   (glue-tiles <forma> <forma>)
;;


(set-puzzle-shift-step!)

;; ESPRESSIONE PER COMPORRE LA CROCE

(glue-tiles
 
 (glue-tiles
  (shift-right smaller-tile 2)
  (shift-right (shift-down (half-turn smaller-tile) 5)2)
 )

 (glue-tiles
  larger-tile
  (shift-down (shift-right (half-turn larger-tile) 2) 1)
  )
 
)

;; ESPRESSIONE PER COMPORRE IL QUADRATO

(glue-tiles
 
 (glue-tiles
  (shift-right (half-turn smaller-tile) 2)
  (shift-right (shift-down smaller-tile 5) 2)
 )

 (glue-tiles
  (half-turn larger-tile)
  (shift-down (shift-right larger-tile 2) 1)
  )
 
)