;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es2_Puzzle) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "puzzle.rkt" "installed-teachpacks")) #f)))
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