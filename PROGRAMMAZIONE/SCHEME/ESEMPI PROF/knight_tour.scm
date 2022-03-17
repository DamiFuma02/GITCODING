;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname knight_tour) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))

;; Dato astratto "Scacchiera"
;;
;; Operazioni:
;;
;;   (empty-board <size>)               :  number -> board
;;
;;   (board-size <board>)               :  board -> number
;;
;;   (visited-squares <board>)          :  board -> number
;;
;;   (visited? <board> <row> <column>)  :  board x index x index -> boolean
;;
;;   (visit-path <board>)               :  board -> path
;;
;;   (visit <board> <row> <column>)     :  board x index x index -> board


;; Problema del "giro del cavallo"

;; I. Numero di soluzioni:

(define knight-tours
  (lambda (n i j)  ; n > 0,  1 <= i, j <= n
    (knight-paths i j (visit (empty-board n) i j) (* n n))
    ))


(define knight-paths
  (lambda (i j board full-length)
    (if (= (visited-squares board) full-length)  ; scacchiera visitata?
        1                                        ; si: e' stata trovata una soluzione
        (+                                       ; no: continua la ricerca
         (knight-jumps (- i 2) (- j 1) board full-length)
         (knight-jumps (- i 1) (- j 2) board full-length)
         (knight-jumps (+ i 1) (- j 2) board full-length)
         (knight-jumps (+ i 2) (- j 1) board full-length)
         (knight-jumps (+ i 2) (+ j 1) board full-length)
         (knight-jumps (+ i 1) (+ j 2) board full-length)
         (knight-jumps (- i 1) (+ j 2) board full-length)
         (knight-jumps (- i 2) (+ j 1) board full-length)
         )
        )
    ))


(define knight-jumps
  (lambda (i j board full-length)
    (let ((n (board-size board))
          )
      (if (and (<= 1 i) (<= i n) (<= 1 j) (<= j n))
        (if (not (visited? board i j))
            (knight-paths i j (visit board i j) full-length)
            0)
        0))
    ))


;; II. Specifica soluzione (la prima trovata):

(define knight-tour
  (lambda (n i j)  ; n > 0,  1 <= i, j <= n
    (knight-path i j (visit (empty-board n) i j) (* n n))
    ))


(define knight-path
  (lambda (i j board full-length)
    (if (= (visited-squares board) full-length)  ; scacchiera visitata?
        (visit-path board)                       ; si: e' stata trovata una soluzione
        (let ((solution-1                        ; no: continua la ricerca
               (knight-jump (- i 2) (- j 1) board full-length))
              )
          (if (not (null? solution-1))
              solution-1
        (let ((solution-2
               (knight-jump (- i 1) (- j 2) board full-length))
              )
          (if (not (null? solution-2))
              solution-2
        (let ((solution-3
               (knight-jump (+ i 1) (- j 2) board full-length))
              )
          (if (not (null? solution-3))
              solution-3
        (let ((solution-4
               (knight-jump (+ i 2) (- j 1) board full-length))
              )
          (if (not (null? solution-4))
              solution-4
        (let ((solution-5
               (knight-jump (+ i 2) (+ j 1) board full-length))
              )
          (if (not (null? solution-5))
              solution-5
        (let ((solution-6
               (knight-jump (+ i 1) (+ j 2) board full-length))
              )
          (if (not (null? solution-6))
              solution-6
        (let ((solution-7
               (knight-jump (- i 1) (+ j 2) board full-length))
              )
          (if (not (null? solution-7))
              solution-7
        (let ((solution-8
               (knight-jump (- i 2) (+ j 1) board full-length))
              )
          solution-8)
          ))))))))))))))
        )))


(define knight-jump
  (lambda (i j board full-length)
    (let ((n (board-size board))
          )
      (if (and (<= 1 i) (<= i n) (<= 1 j) (<= j n))
        (if (not (visited? board i j))
            (knight-path i j (visit board i j) full-length)
            null)
        null))
    ))


;; Come si possono calcolare altre soluzioni?


;; Realizzazione del dato astratto "Scacchiera"


(define empty-board
  (lambda (size)
    (list               ; la rappresentazione si articola in:
     size               ; 1) dimensione della scacchiera: intero
     0                  ; 2) numero quadrati visitati: intero
     null               ; 3) percorso di visita: lista di coppie
     (lambda (i j) #f)  ; 2) posizione visitata?: procedura
     )
    ))

(define board-size car)

(define visited-squares cadr)

(define visited?  ; la posizione <row,col> e' disponibile?
  (lambda (board row col)
    ((cadddr board) row col)
    ))

(define visit-path caddr)

(define visit              ; il cavallo visita il quadrato <row,col>
  (lambda (board row col)  ; che si suppone non visitato
    (list
     (board-size board)                                  ; dimensione della scacchiera
     (+ (visited-squares board) 1)                      ; numero quadrati visitati
     (append (visit-path board) (list row  col))  ; percorso di visita
     (constrain row col (cadddr board))                  ; posizione visitata?
     )
    ))


;; Procedure di supporto

(define constrain
  (lambda (row col pred)               ; pred procedurale (predicato)
    (lambda (i j)
      (if (and (= i row) (= j col))
          #t                           ; visitato
          (pred i j)                   ; come pred
          ))
    ))
