;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname puzzle) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))

;; Square-Cross Puzzle
;; Claudio Mirolo, 6/11/2014

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
;; dove  <forma>  e' una delle due forme base, eventualmente
;; spostata e/o ruotata,  <passi>  e' un numero naturale positivo
;; che rapresenta un'unita' di lunghezza minima dei possibili
;; spostamenti in giu' o a sinistra.
;; Le operazioni consentono, rispettivamente, di spostae in basso,
;; spostare a destra, ruotare di 90 gradi in senso orario, ruotare
;; di 90 gradi in senso antiorario, capovolgere e combinare
;; insieme due forme. ... Si capisce meglio provando!
;;
;; L'obiettivo e' di costruire una croce regolare e un quadrato
;; con il minimo numero di pezzi, corrispondenti alle forme base,
;; opportunamente posizionati e orientati.
;;
;; Quali altre figure si possono costruire?


;; Traslazione unitaria da utilizzare con il puzzle

(set-puzzle-shift-step!)

;------------------------------------------------------------------
; Istruzione quadrato:
; Utilizzo 4 smaller-tile, creo 2 rettangoli e li unisco:
; Primo rettangolo: (glue-tiles (shift-down smaller-tile 0) (quarter-turn-right (quarter-turn-right smaller-tile)))
; Secondo rettangolo: (shift-down (glue-tiles (shift-down smaller-tile 0) (quarter-turn-right (quarter-turn-right smaller-tile))) 1)

( glue-tiles (glue-tiles (shift-down smaller-tile 0) (quarter-turn-right (quarter-turn-right smaller-tile))) (shift-down (glue-tiles (shift-down smaller-tile 0) (quarter-turn-right (quarter-turn-right smaller-tile))) 1))

;------------------------------------------------------------------
; Istruzione croce:
; Utilizzo 4 larger-tile, creo due figure e le unisco:
; Primo pezzo: (shift-down larger-tile 0)
; Secondo pezzo: (quarter-turn-right (half-turn larger-tile))
; Terzo pezzo: (quarter-turn-left (half-turn larger-tile))
; Quarto pezzo: (quarter-turn-left (quarter-turn-left larger-tile))

; Prima figura: (glue-tiles (shift-down larger-tile 0) (shift-down (quarter-turn-right (half-turn larger-tile)) 2) )
; Seconda figura: (glue-tiles (quarter-turn-left (half-turn larger-tile)) (shift-right (shift-down (quarter-turn-left (quarter-turn-left larger-tile)) 1) 1) )

(glue-tiles (shift-right (glue-tiles (quarter-turn-left (half-turn larger-tile)) (shift-right (shift-down (quarter-turn-left (quarter-turn-left larger-tile)) 1) 1) ) 1) (glue-tiles (shift-down larger-tile 0) (shift-down (quarter-turn-right (half-turn larger-tile)) 2) ) )