;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es8_Hanoi) (read-case-sensitive #t) (teachpacks ((lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hanoi.ss" "installed-teachpacks")) #f)))

(define hanoi-moves
  (lambda (n)
    (hanoi-rec n 1 2 3)    ;1 2 3 sono gli indici che individuano le aste S D T
  )
)


(define hanoi-rec ;ritorna la lista totale di mosse dalla prima all'ultima
  (lambda (n s d t)    ;source destination transit; n = numero dischi
    (if (= n 1)    ;rimasto 1 disco   S --> D
        (list (list s d))  ;MOSSA S --> D
        ;MOSSA 1 = sposta i primi n-1 dischi da S --> T
        ;MOSSA 2 = poi sposta nesimo disco da S --> D
        ;MOSSA 3 = per ultimo sposta n-1 dischi da T --> D
        (let ( (m1 (hanoi-rec (- n 1) s t d) )    ;source = S destination = T
               (m2 (list s d))    ;ultimo disco da S --> D
               (m3 (hanoi-rec (- n 1) t d s)); source = T, destination = D
             )
          ;; COSTRUISCE LA LISTA DELLE MOSSE IN ORDINE da m1 a m3
          (append
                      m1  
                      (cons m2 m3)
               ) 
        )
     )
  )
)

 


;; Restituisce la configurazione al termine della "k"-esima mossa
(define hanoi-disks ; hanoi-disks: list
 (lambda (n k)      ; n = numero dischi, k = mossa inclusa a cui terminare la ricerca
  (hanoi-rec-cod n k
                 ;CONFIGURAZIONI INIZIALI DELLE 3 POSTAZIONI CON 0 DISCHI
                 '(1 0)    ;SOURCE
                 '(2 0)    ;DESTINATION
                 '(3 0)    ;TRANSIT
                 n)
  )
 )
  

;ricorsione di CODA: si stabilisce la posizione dell n-esimo disco,
; e via via sia arriva al minore
(define hanoi-rec-cod         ; hanoi-rec-cod: list
 (lambda (n k s d t n_backup) ; n, k, n_backup: int  ; s, d, t: lists 
    (let  ( (l (expt 2 (- n 1)))    ;lunghezza = 2^(n-1)
            (h (+ (cadr s) (cadr d) (cadr t))) ;somma i contatori delle liste posizioni
          )
        (cond
              ((= h n_backup)   ;mosse terminate perchè h è la somma di tutti i pezzi spostati
                   (list s d t)
              )
              ((< k l)        ;mosse precedenti a quella intermedia
                   (hanoi-rec-cod (- n 1) k
                                  (list (car s) (+ (cadr s) 1)) ;il blocco n-esimo si troverà ancora nella S
                                  t d n_backup)   ;trasferisce i n-1 blocchi da S a T passando per D
              )
              ((not (< k l))  ;mossa successiva a quella intermedia
                   (hanoi-rec-cod (- n 1)
                                  (- k l) ;mossa effettuata 
                                  t      ;n-1 blocchi da T a D passando per S
                                  (list (car d) (+ (cadr d) 1)) ;incrementa il numero di oggetti in D
                                  s n_backup)
              )
        )
     )
  )
)


(define recursive-picture
     (lambda (N n k s d t ns nd nt img) ;N: numero torale dei dischi da usare per la dimensione delle figure tramite il teachpack
                                        ;n: dischi ancora da spostare, progressivamente diminuisce fino a 0, quando tutti saranno stati piazzati
                                        ;k: mosse da trovare
                                        ;s d t = posizioni; ns nd nt: numero di disci per ogni posizione
                                        ;image : immagine generata in precedenza a cui sovrapporre la nuova generata
           (if (= n 0)
                img ;CASO BASE ritorna l'immagine costruita
                (if (< k (expt 2 (- n 1)))
                    ;mossa precedente a quella intermedia
                    ;deve ancora finire di spostare (n-1)blocchi da S a T, oppure ha appena finito ma non si può sapere
                    (recursive-picture N (- n 1) k    ;configurazione di (n-1) blocchi dopo la k-esima mossa
                                       s t d   ;da S --> T
                                       (+ ns 1) ;il n-esimo si trova in S 
                                       nt nd
                                       (above (disk-image (- n 1) N s ns) img)   ;nuova immagine generata
                                       ;viene piazzato l'n-esimo blocco nell'asticella S
                    ) 
                    ;mossa successiva o uguale
                    ;n-esimo è sicuramente stato spostato in D
                    ;--> si procede con le mosse in ordine giusto
                    ;== (n-1)blocchi da T a D
                    (recursive-picture N (- n 1) (- k (expt 2 (- n 1)))
                                       t d s   ;da T --> D   
                                       nt
                                       (+ nd 1) ;n-esimo si trova in D
                                       ns
                                       (above (disk-image (- n 1) N d nd) img)   ;nuova immagine generata
                    )
                    
                  
                ) 
           )
     )
)

;restituisce la configurazione grafica della situazione dopo K mosse
(define hanoi-picture 
  (lambda (n k)
       (recursive-picture n n k
                    1 2 3  ;; S D T
                    0 0 0  ;ns nd nt
                    (towers-background n) ;imposta la dimensione dello sfondo
       )
  )
)
;(disk-image ringsize ringnumber position 1)
;(overlap-images
      ;            size discnumber position
      ;(disk-image 1 2 1 1) dischi in pos = 1
      ;(disk-image 1 2 2 1) dischi in pos = 2
      ;(disk-image 1 2 3 1) dischi in pos = 3
;)

;AGGIUNGE disk-image al BACKGROUND
;(overlap-images (disk-image 1 2 1 1) (towers-background 4))



;; Problema generalizzato della Torre di Hanoi
;;
;; Rappresentazione di una configurazione generica:  (d1 d2 ... dk)
;;
;; lista delle posizioni (asticelle) dei dischi, a partire da quello
;; di diametro maggiore, e via via in ordine decrescente di diametro.

 
;; Numero di mosse

(define number-of-moves               ; valore: intero
  (lambda (cfg dst)                   ; cfg: lista, dst: {1, 2, 3} (posizioni)
    (if (null? cfg)
        0
        (let ((b (car cfg)))          ; b: posizione del disco piu' grande
          (if (= b dst)
              (number-of-moves (cdr cfg) dst)
              (+
               (number-of-moves (cdr cfg) (other b dst))
               1
               (number-of-moves (tower (other b dst) (- (length cfg) 1)) dst)
               ))
          ))
    ))


;; Date due posizioni (asticelle), individuazione della terza

(define other                         ; valore: {1, 2, 3}
  (lambda (x y)                       ; x, y: {1, 2, 3}
    (- 6 (+ x y))                     ; aritifizio
    ))


;; Rappresentazione di una mossa


;; Torre di n dischi in posizione (asticella) data

(define tower                         ; valore: lista di posizioni
  (lambda (x n)                       ; z: {1, 2, 3}, n: intero non negativo
    (if (= n 0)
        null
        (cons x (tower x (- n 1)))
        )))

