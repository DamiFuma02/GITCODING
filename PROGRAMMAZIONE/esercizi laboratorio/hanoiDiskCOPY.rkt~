;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname hanoiDiskCOPY) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks") (lib "hanoi.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks") (lib "hanoi.ss" "installed-teachpacks")) #f)))

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
        (let ( (m1 (hanoi-rec (- n 1) s t d) );source = S destinazion = T
               (m2 (list s d))    ;ultimo disco da S --> D
               (m3 (hanoi-rec (- n 1) t d s)); source = T, destination = D
               ;; COSTRUISCE LA LISTA DELLE MOSSE IN ORDINE da m1 a m3
               
             )
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
  

;ricorsione di CODA: si stabilisce la posizione dell n-esimo disco, quindi il maggiore e via via sia arriva al minore
(define hanoi-rec-cod         ; hanoi-rec-cod: list
 (lambda (n k s d t n_backup) ; n, k, n_backup: int  ; s, d, t: lists
    (let  ( (l (expt 2 (- n 1)))    ;lunghezza = 2^(n-1)
            (h (+ (cadr s) (cadr d) (cadr t))) ;somma i secondi elementi delle liste
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
                                  (- k l) ;n-esimo blocco piazzato 
                                  t      ;n-1 blocchi da T a D passando per S
                                  (list (car d) (+ (cadr d) 1)) ;incrementa il numero di oggetti in D
                                  s n_backup)
              )
        )
     )
  )
)


(define hanoi-picture     ;stampa la grafica della posizione alla k-esima mossa
  (lambda (n k)    ;n blocchi, k-esima mossa
    (let ((lista (hanoi-disks n k)) ;configurazione delle mosse
         )
         (overlap-images
              (overlap-images (disk-image 1 3 1 1) (disk-image 1 2 2 1)
               )
              (towers-background n) 
          )
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

;FUNZIONA QUASI
;(overlap-images (disk-image 1 2 1 1) (disk-image 2 3 1 1) )

 