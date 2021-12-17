;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname hanoiDiskCOPY) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
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
 (lambda (n k)      ; n, k: int
  (hanoi-rec-cod n k '(1 0) '(2 0) '(3 0) n)
  )
 )
 



(define hanoi-rec-cod         ; hanoi-rec-cod: list
 (lambda (n k s d t n_backup) ; n, k, n_backup: int  ; s, d, t: lists
    (let  ( (l (expt 2 (- n 1)))
            (h (+ (cadr s) (cadr d) (cadr t)))
          )
        (cond
              ((= h n_backup)
                   (list s d t)
              )
              ((< k l)
                   (hanoi-rec-cod (- n 1) k (list (car s) (+ (cadr s) 1)) t d n_backup)
              )
              ((not (< k l))
                   (hanoi-rec-cod (- n 1) (- k l) t (list (car d) (+ (cadr d) 1)) s n_backup)
              )
        )
     )
  )
)
 