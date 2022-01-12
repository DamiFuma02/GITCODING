;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Es6-Tasselation) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
;USARE IL TEACHPACK drawing.ss


(set-tessellation-shift-step!)

(define L-tessellation
  (lambda (n)
        (if (= n 1)
            L-tile
            (glue-tiles (glue-tiles (glue-tiles (L-tessellation (/ n 2)) (shift-right (quarter-turn-right (L-tessellation (/ n 2))) n))
                                    (shift-down (shift-right (L-tessellation (/ n 2)) (/ n 2)) (/ n 2)))
                        (shift-down (quarter-turn-left (L-tessellation (/ n 2))) n)       
            )
        )
  )
)