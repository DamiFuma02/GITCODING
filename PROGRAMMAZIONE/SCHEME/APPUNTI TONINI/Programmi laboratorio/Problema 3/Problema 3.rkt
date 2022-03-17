;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Problema 3|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;; PARTE 1

;; PROCEDURA PER DETERMINARE SE IL NUMERO È FRAZIONARIO

(define frazionario?
  (lambda (str)    ;;str: stringa
    (let ((k (string-length str)))
      ;; se la stringa è vuota, restituisco 0
      (if (string=? str "")
          false
          ;; altrimenti, verifico se il primo carattere è un punto
          (if (char=? (string-ref str 0) #\.)
          true
          ;; se non è il punto, richiamo la procedura spostandomi di una posizione a destra
          (frazionario? (substring str 1 k))
          )
      )
    )))

;; PROCEDURA PER VERIFICARE SE IL NUMERO È NEGATIVO

(define negativo?
  (lambda (str)    ;;str: stringa
    ;; vedo se il primo carattere è il segno -
    (if(char=? (string-ref str 0) #\-)
       true
       false
    )
  ))

;; PROCEDURA PER VERIFICARE LA PRESENZA E RIMUOVERE L'EVENTUALE SEGNO + O -

(define segno
  (lambda (str)   ;; str: stringa
    (if(or(char=? (string-ref str 0) #\+)(char=? (string-ref str 0) #\-))
       ;; se vero rimuovo il primo carattere
       (substring str 1 (string-length str))
       ;; se falso mantengo la stringa iniziale
       str
    )
  ))


;; PROCEDURA DI SUPPORTO CON LA POSIZIONE DEL PUNTO INIZIALIZZATA A 0

(define punto
  (lambda (str)
    (punto-privata str 0)
))

;; PROCEDURA PER DETERMINARE LA POSIZIONE DEL PUNTO

(define punto-privata
  (lambda (str pos)   ;;str: stringa
    ;; verifico se il primo carattere è un punto
    (if(char=? (string-ref str 0) #\.)
       ;; se vero restituisco la posizione del punto
       pos
       ;; se falso richiamo la procedura spostandomi di una posizione a destra
       (punto-privata (substring str 1 (string-length str)) (+ pos 1)) 
       )
  ))

;; PROCEDURA PER DETERMINARE IL VALORE DELLA CIFRA

(define bit-val                 
  (lambda (bit)            
    (if (string=? bit "0")
        0
        1)
    )
  )

;; PROCEDURA PER CALCOLARE LA PARTE INTERA

(define parte-intera            
  (lambda (str)          
    (let ((k (- (string-length str) 1)))  
      ;; verifico se la stringa contiene solo un carattere
      (if (= k 0)       ; se la stringa contiene un solo carattere
        ;; se vero, restituisco il valore della cifra
        (bit-val (substring str k))
        ;; se falso, continuo a calcolare ricorsivamente
        (+ (* 2 (parte-intera (substring str 0 k))) (bit-val (substring str k))))
      )))

;; PROCEDURA PER CALCOLARE LA PARTE FRAZIONARIA

(define parte-fraz              
  (lambda (str)
    ;; verifico se la stringa è vuota
    (if (= (string-length str) 0) 
        ;; se vero, restituisco 0
        0
        ;; se falso, verifico se la stringa ha un solo carattere
        (if (= (string-length str) 1) 
            ;; se vero, verifico se il carattere è 1
            (if (string=? (substring str 0) "1")
                ;; se vero, divido per 2
                (/ 1 2) 
                ;; se falso, restituisco 0
                0
                )      
            ;; se falso, verifico se il carattere è 1
            (if (string=? (substring str 0 1) "1")           
                ;; se vero, continuo a calcolare sommando 1/2
                (+ (/ (parte-fraz (substring str 1)) 2) (/ 1 2))
                   ;; se falso, continuo a calcolare sommare nulla
                   (/ (parte-fraz (substring str 1)) 2))            
                ) 
            ))) 

;; PROCEDURA FINALE

(define bin-rep->number
  (lambda (str)
    ;; rimuovo il segno al numero di partenza 
    (let ((num (segno str)))
    ;; verifico se la stringa è vuota
    (if (string=? str "")
        ;; se vero, restituisco la stringa vuota 
        ""
        ;; se falso, verifico se il numero è frazionario
        (if (frazionario? num)
          ;; se vero (è frazionario) verifico se il numero di partenza (con il segno) è negativo
          (if (negativo? str)
              ;; se vero (è negativo) sommo parte intera e parte frazionaria (anteponendo il segno -)
              ;; alla procedura parte-intera passo la stringa alla posizione 0 alla posizione del punto
              ;; alla procedura parte-fraz passo la stringa dalla posizione dopo il punto fino alla fine della stringa
              (- (+ (parte-intera (substring num 0 (punto num))) (parte-fraz (substring num (+ (punto num) 1)))))
              ;; se falso (è positivo) sommo parte intera e frazionaria (senza anteporre nessun segno)
              (+ (parte-intera (substring num 0 (punto num))) (parte-fraz (substring num (+ (punto num) 1))))
          )
          ;; se falso (non è frazionario) converto in decimale subito
          (if (negativo? str)
              (- (parte-intera num))
              (parte-intera num))
        )
    )
)))





;; PARTE 2

;; PROCEDURA PER DETERMINARE LA BASE

(define base              ; val: intero
  (lambda (b)             ; b: stringa
    (string-length b)
    )
  )

;; PROCEDURA DI SUPPORTO CON LA POSIZIONE INIZIALIZZATA A 0
  
(define val-cifra            
  (lambda (b c)         
    (val-cifra-privata b c 0)
  ))
  
;; PROCEDURA CHE RESTITUISCE IL VALORE DELLA CIFRA (OVVERO LA SUA POSIZIONE ALL'INTERNO DELLA STRINGA CON LE VARIE CIFRE/SIMBOLI)
  
(define val-cifra-privata         
    (lambda (b c pos)
      ;; verifico se ho trovato il carattere nella stringa
      (if (string=? (substring b 0 1) c)
          ;; se vero, restituisco la sua posizione (valore)
          pos
          ;; se falso, continuo a cercare
          (val-cifra-privata (substring b 1) c (+ pos 1)))
        )
      )

;; PROCEDURA PER CALCOLARE LA PARTE INTERA

(define parte-intera-base          ;val: intero
  (lambda (b str)         ;num: stringa  b:simboli della base 
    (let ((k (-(string-length str) 1))  ;k assume lunghezza di num - 1
          (B (base b)) 
          ) 
      (if (= k 0)       ; se la stringa contiene un solo carattere
        (val-cifra b (substring str k)) 
        (+
         (* B (parte-intera-base b (substring str 0 k)))  ;chiamata ricorsiva * base per spostare a sinistra
         (val-cifra b (substring str k))            ;aggiungo ultima cifra significativa 
         ))
      )))

;; PROCEDURA PER CALCOLARE LA PARTE FRAZIONARIA

(define parte-fraz-base              ;val: intero 
 (lambda (b str)            ;num: stringa b: simboli della base
   (let((B (base b))  
        )
   (if (= (string-length str) 0) ;se ho finito i bit da convertire
       0
       (+ (/ (parte-fraz-base b (substring str 1)) B) (/ (val-cifra b (substring str 0 1)) B)) ;stesso calcolo parte 1 solo con base-b al posto del 2
    )
  )))  

;; PROCEDURA FINALE

(define rep->number
  (lambda (b str)
    ;; rimuovo il segno al numero di partenza 
    (let ((num (segno str)))
    ;; verifico se la stringa è vuota
    (if (string=? str "")
        ;; se vero, restituisco la stringa vuota 
        ""
        ;; se falso, verifico se il numero è frazionario
        (if (frazionario? num)
          ;; se vero (è frazionario) verifico se il numero di partenza (con il segno) è negativo
          (if (negativo? str)
              ;; se vero (è negativo) sommo parte intera e parte frazionaria (anteponendo il segno -)
              ;; alla procedura parte-intera passo la stringa alla posizione 0 alla posizione del punto
              ;; alla procedura parte-fraz passo la stringa dalla posizione dopo il punto fino alla fine della stringa
              (- (+ (parte-intera-base b (substring num 0 (punto num))) (parte-fraz-base b (substring num (+ (punto num) 1)))))
              ;; se falso (è positivo) sommo parte intera e frazionaria (senza anteporre nessun segno)
              (+ (parte-intera-base b (substring num 0 (punto num))) (parte-fraz-base b (substring num (+ (punto num) 1))))
          )
          ;; se falso (non è frazionario) converto in decimale subito
          (if (negativo? str)
              (- (parte-intera-base b num))
              (parte-intera-base b num))
        )
    )
)))

;; PROVE PER VERIFICARE IL FUNZIONAMENTO DEL PROGRAMMA
;; (bin-rep->number "+1101") → 13
;; (bin-rep->number "0") → 0
;; (bin-rep->number "10110.011") → 22.375
;; (bin-rep->number "-0.1101001") → -0.8203125

;; (rep->number "zu" "-uuzz") ;→ -12
;; (rep->number "0123" "+21.1"); → 9.25
;; (rep->number "01234" "-10.02") ;→ -5.08
;; (rep->number "0123456789ABCDEF" "0.A") ;→ 0.625
;; (rep->number "0123456789ABCDEF" "1CF.0"); → 463
