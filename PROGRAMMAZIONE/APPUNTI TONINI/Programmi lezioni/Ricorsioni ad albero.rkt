;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Ricorsioni ad albero|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; Tassellazioni lineari con piastrelle quadrate e rettangolari
;; Devo coprire una riga di  12 con quadrati di lato 1 e retttangoli di lato 2. L'obiettivo è capire con quante combinazioni posso farlo

(define tass-qr
  (lambda (n)    ;; n: intero positivo (lunghezza totale linea (in questo caso 12))
   (cond ((= n 1) 1)  ;; se lo spazio rimasto è 1, ho una sola possibilita per riempirlo
         ((= n 2) 2)  ;; se lo spazio rimasto è 2, ho 2 possibilita per riempirlo
   (else
         (+(tass-qr (- n 2))
         (tass-qr (- n 1)))
   ))
  )
)

;; linea di lunghezza 11 da riempire con quadrati blu e rossi
;; non ci possono essere 2 quadratti rossi adiacenti

(define tass-rb
  (lambda (n)    ;; n: intero positivo (lunghezza totale linea --> 12)
   (cond ((= n 1) 2) ;; ho 2 modi per riempire uno spazio (o metto rosso o metto blu)
         ((= n 2) 3) ;; ho 2 modi per riempire uno spazio da 2 (3 blu, 1 rossa in mezzo, 2 rosse ai lati)
   (else
         (+(tass-rb (- n 2))
         (tass-rb (- n 1)))
   ))
  )
)

;; Problema percorso di Manhattan
;; Trovare numero di percorsi possibili da A a B

(define manh
  (lambda (i j)    ;; i e j sono altezza e lunghezza del quadrato formato tra A e B 
  (if (or (= j 0) (= i 0))   ;casi base
      1 
    (+(manh (- i 1) j)
    (manh i (- j 1)))
   )
  )
)

;; Problema numeri di Sterling
;; Devo vedere quante combinazioni ho per sistemare n pasticcini in k piatti (nessun piatto può stare vuoto)

(define stirling
  (lambda (n k)
    (if (or (= k 1) (= k n))
        1
        (+ (stirling (- n 1) (- k 1))   ;;se pasticcino sta da solo nel piatto
           (* k (stirling (- n 1) k)))  ;;se pasticcino viene accoppiato a un altro
        )
    ))


;; Sottosequenza comune più lunga (Longest Common Sequence)
;; LLCS = Lunghezza della LCS
;; llcs (ax,by) = ? a=simbolo iniziale prima sequenza, x=altri simboli
;;                  b=simbolo iniziale seconda sequenza, y=altri simboli
;; se a=b --> 1+llcs(x,y)
;; se a diverso da b ---> max( llcs(x,by) llcs(ax,y))
;; llcs(_, y) = llcs(x,_) = 0

(define llcs
  (lambda (u v)
    (cond ((or (string=? u "") (string=? v "")) 0)  ;;se una delle 2 vuota
          ((char=? (string-ref u 0) (string-ref v 0)) ;;se primi caratteri uguali, conto 1 e delego togliendo il primo carattere da entrambe
           (+ 1 (llcs (substring u 1) (substring v 1)))) 
          (else (max (llcs (substring u 1) v) ;;se primi diversi, delego le 2 possibilità diverse (togliere il primo carattere dalla prima o dalla seconda stringa) 
                     (llcs u (substring v 1)))) ;;max: funzione predefinita che restitisce il massimo tra 2 numeri
          )
    ))

;; LCS

(define lcs
  (lambda (u v)
    (cond ((or (string=? u "") (string=? v "")) "") ;;se una vuota, restituisco stringa vuota
          ((char=? (string-ref u 0) (string-ref v 0)) ;;se primi uguali, appendo primo carattere e delego il resto
           (string-append (substring u 0 1) (lcs (substring u 1) (substring v 1))))
          (else (longer (lcs (substring u 1) v) ;;se primi diversi, delego le 2 possibilità diverse (togliere il primo carattere dalla prima o dalla seconda stringa)
                     (lcs u (substring v 1))))
          )
    ))

;;longer restituisce la stringa più lunga (in sostituzione a max)
(define longer
  (lambda (u v)
    (let ((m (string-length u))
          (n (string-length v))
          )
      (cond ((< m n) v)
            ((> m n) u)
            ((= (random 2) 0) v) ;;random n: funzione predefinita che restituisce valore casuale da 0 a n (n non compreso)
            (else u))
      )
    ))

