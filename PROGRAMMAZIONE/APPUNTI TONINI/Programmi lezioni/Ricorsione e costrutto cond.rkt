;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Ricorsione e costrutto cond|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Formati Ak

;;  s(k) = lunghezza del lato più lungo del formato Ak
;;  s(k+2) = s(k) / 2
;;  s(0) = s0
;;  s(1) = s1

(define s       ;; val: numero reale che rappresenta una misura
  (lambda (k)   ;; k: intero non negativo 
    ;(if (> k 1)
    ;(/ (s (- k 2)) 2)
    ;(if (= k 0)
    ;    s0
    ;    s1
    ;))
   ;)
 ;)
    (cond ((> k 1) (/ (s (- k 2)) 2))
          ((= k 0) s0)
          (else s1))))

;; A0: s0*s1= 10000 cmq
;; s0/s1 = s1/s2 = s1/(s0/2) = 2s1/s0 ---> s0*2 = 2 s1^2     s0 lato piu lungo e s1 lato piu corto
;; s0^2 * s1^2 = 10^8
;; 2 s1^4 = 10^8 / 2
;; s0 = 2^(1/2) s1

(define s0 (* 100 (expt 2 1/4)))
(define s1 (/ 100 (expt 2 1/4)))
