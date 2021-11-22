;; This file contains a DrScheme teachpack version of the functional graphics
;; system for use with Concrete Abstractions: An Introduction to Computer
;; Science Using Scheme, by Max Hailperin, Barbara Kaiser, and Karl Knight.
;;
;; This version has been tested under DrScheme 202, 201, and 200.
;;
;; Revision 1.10 as of 2002/10/10 16:05:15
;;
;; Note: after revision 1.9, undocumented variable-arity features
;; were removed from the procedures stack, overlay, line, and filled-triangle.

(module fungraph mzscheme
 (provide get-default-image-size set-default-image-size!
   line quarter-turn-right mirror-image invert
   overlay resize-image stack filled-triangle write-image-as-epsf)

 (require (lib "class.ss"))
 (require (lib "class100.ss"))
 (require (lib "mred.ss" "mred"))

 (define default-image-size 100)

 (define get-default-image-size
   (lambda ()
     default-image-size))

 (define set-default-image-size!
   (lambda (new)
     (set! default-image-size new)))

 (define fungraph-snipclass
   (make-object
    (class100-asi snip-class%
               (override
                (read (lambda (s)
                   (let ((code-box (box 0)))
                     (send s get code-box)
                     (case (integer->char (unbox code-box))
                       ((#\l)
                        (let ((x0b (box 0.0))
                              (y0b (box 0.0))
                              (x1b (box 0.0))
                              (y1b (box 0.0))
                              (wb (box 0))
                              (hb (box 0)))
                          (send s get x0b)
                          (send s get y0b)
                          (send s get x1b)
                          (send s get y1b)
                          (send s get wb)
                          (send s get hb)
                          (make-object line-fungraph-snip%
                                         (unbox x0b)
                                         (unbox y0b)
                                         (unbox x1b)
                                         (unbox y1b)
                                         (unbox wb)
                                         (unbox hb))))
                       ((#\q)
                        (make-object qtr-fungraph-snip%
                                       (read s)))
                       ((#\m)
                        (make-object mi-fungraph-snip%
                                       (read s)))
                       ((#\i)
                        (make-object inverted-fungraph-snip%
                                       (read s)))
                       ((#\o)
                        (let ((nbox (box 0)))
                          (send s get nbox)
                          (let loop
                              ((n (unbox nbox))
                               (images '()))
                            (if (= n 0)
                                (make-object overlayed-fungraph-snip%
                                               (reverse images))
                                (loop (- n 1)
                                      (cons (read s) images))))))
                       ((#\r)
                        (let ((image (read s))
                              (width-box (box 0))
                              (height-box (box 0)))
                          (send s get width-box)
                          (send s get height-box)
                          (make-object resized-fungraph-snip%
                                         image
                                         (unbox width-box)
                                         (unbox height-box))))
                       ((#\s)
                        (let* ((top (read s))
                               (bottom (read s)))
                          (make-object stacked-fungraph-snip%
                                         top bottom)))
                       ((#\f)
                        (let ((x0b (box 0.0))
                              (y0b (box 0.0))
                              (x1b (box 0.0))
                              (y1b (box 0.0))
                              (x2b (box 0.0))
                              (y2b (box 0.0))
                              (wb (box 0))
                              (hb (box 0)))
                          (send s get x0b)
                          (send s get y0b)
                          (send s get x1b)
                          (send s get y1b)
                          (send s get x2b)
                          (send s get y2b)
                          (send s get wb)
                          (send s get hb)
                          (make-object ft-fungraph-snip%
                                         (unbox x0b)
                                         (unbox y0b)
                                         (unbox x1b)
                                         (unbox y1b)
                                         (unbox x2b)
                                         (unbox y2b)
                                         (unbox wb)
                                         (unbox hb))))
                       (else
                        (error "Unknown kind of fungraph snip"
                               (unbox code-box)))
                       ))))))))
 (send* fungraph-snipclass
        (set-version 1)
        (set-classname "fungraph-snip%"))
 (send (get-the-snip-class-list) add fungraph-snipclass)

 (define fungraph-snip%
   (let* ([body-pen (send the-pen-list find-or-create-pen
                                   "BLACK" 1 'solid)]
                   [body-brush (send the-brush-list find-or-create-brush
                                     "BLACK" 'solid)]
                   [other-pen (send the-pen-list find-or-create-pen
                                    "WHITE" 1 'solid)]
                   [other-brush (send the-brush-list find-or-create-brush
                                      "WHITE" 'solid)])
   (class100 snip% (w h)
          (private-field
           (width w)
           (height h))
          (inherit set-snipclass)
          (override
           (get-extent
            (lambda (dc x y w h descent space lspace rspace)
              (for-each (lambda (box value)
                          (if box
                              (set-box! box (exact->inexact value))))
                        (list w h descent space lspace rspace)
                        (list width height 0 0 0 0))))
           (draw
            
              (lambda (dc x y left top right bottom dx dy drawCaret)
                (let ([orig-pen (send dc get-pen)]
                      [orig-brush (send dc get-brush)])
                  (fungraph-draw dc
                               (lambda (x0 y0)
                                 (+ x (* .5 (+ 1 x0) width)))
                               (lambda (x0 y0)
                                 (+ y (* .5 (- 1 y0) height)))
                               body-pen
                               body-brush
                               other-pen
                               other-brush)

                  (send dc set-pen body-pen)
		 
                  (send dc draw-line x y (+ x width) y)
                  (send dc draw-line (+ x width) y (+ x width) (+ y height))
                  (send dc draw-line (+ x width) (+ y height) x (+ y height))
                  (send dc draw-line x (+ y height) x y)

                  (send dc set-pen orig-pen)
                  (send dc set-brush orig-brush)))))
          (public
           (get-width (lambda () width))
           (get-height (lambda () height))
           (fungraph-draw
            (lambda (dc xt yt bp bb op ob)
              #f)))
          (sequence
            (super-init)
            (set-snipclass fungraph-snipclass)))))

 (define image?
   (lambda (obj)
     ;; roundabout code below is because the obvious
     ;;     (is-a? obj fungraph-snip%)
     ;; doesn't work with objects left around across
     ;; reloadings of this library
     (and (object? obj)
          (method-in-interface? 'fungraph-draw (object-interface obj)))))

 (define image-width
   (lambda (i)
     (send i get-width)))

 (define image-height
   (lambda (i)
     (send i get-height)))

 (define line-fungraph-snip%
   (class100 fungraph-snip% (ix0 iy0 ix1 iy1 w h)
          (private-field
           (x0 ix0)
           (y0 iy0)
           (x1 ix1)
           (y1 iy1))
          (inherit
           get-width
           get-height
           get-style)
          (override
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (let ((x0dc (xt x0 y0))
                    (x1dc (xt x1 y1))
                    (y0dc (yt x0 y0))
                    (y1dc (yt x1 y1)))
                (send dc set-pen body-pen)
		 
                (send dc draw-line x0dc y0dc x1dc y1dc))))
           (write
            (lambda (s)
              (send s put (char->integer #\l))
              (send s put (exact->inexact x0))
              (send s put (exact->inexact y0))
              (send s put (exact->inexact x1))
              (send s put (exact->inexact y1))
              (send s put (get-width))
              (send s put (get-height))))
           (copy
            (lambda ()
              (let ((new (make-object line-fungraph-snip% x0 y0 x1 y1
                                        (get-width) (get-height))))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init w h))))

 (define line
   (lambda (x0 y0 x1 y1)
     (if (not (real? x0))
         (error "x0 argument to line not a real" x0))
     (if (not (real? x1))
         (error "x1 argument to line not a real" x1))
     (if (not (real? y0))
         (error "y0 argument to line not a real" y0))
     (if (not (real? y1))
         (error "y1 argument to line not a real" y1))
     (let ((width default-image-size)
           (height default-image-size))
       (make-object line-fungraph-snip% x0 y0 x1 y1 width height))))

(define qtr-fungraph-snip%
   (class100 fungraph-snip% (i)
          (private-field
           (image i))
          (inherit
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\q))
              (send image write s)))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (send image fungraph-draw dc
                    (lambda (x y) (xt y (- x)))
                    (lambda (x y) (yt y (- x)))
                    body-pen body-brush other-pen other-brush)))
           (copy
            (lambda ()
              (let ((new (make-object qtr-fungraph-snip% image)))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init (image-height image) (image-width image)))))

 (define (quarter-turn-right image)
   (if (not (image? image))
       (error "argument to quarter-turn-right not an image" image))
   (make-object qtr-fungraph-snip% image))

 (define mi-fungraph-snip%
   (class100 fungraph-snip% (i)
          (private-field
           (image i))
          (inherit
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\m))
              (send image write s)))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (send image fungraph-draw dc
                    (lambda (x y) (xt (- x) y))
                    (lambda (x y) (yt (- x) y))
                    body-pen body-brush other-pen other-brush)))
           (copy
            (lambda ()
              (let ((new (make-object mi-fungraph-snip% image)))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init (image-width image) (image-height image)))))

 (define (mirror-image image)
   (if (not (image? image))
       (error "argument to mirror-image not an image" image))
   (make-object mi-fungraph-snip% image))

 (define inverted-fungraph-snip%
   (class100 fungraph-snip% (i)
          (private-field
           (image i))
          (inherit
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\i))
              (send image write s)))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (let ((minx (min (xt -1 -1)
                               (xt -1 1)
                               (xt 1 -1)
                               (xt 1 1)))
                    (miny (min (yt -1 -1)
                               (yt -1 1)
                               (yt 1 -1)
                               (yt 1 1)))
                    (maxx (max (xt -1 -1)
                               (xt -1 1)
                               (xt 1 -1)
                               (xt 1 1)))
                    (maxy (max (yt -1 -1)
                               (yt -1 1)
                               (yt 1 -1)
                               (yt 1 1))))

                (send dc set-pen body-pen)
                (send dc set-brush body-brush)
                (send dc draw-rectangle minx miny
                      (- maxx minx) (- maxy miny))

                (send image fungraph-draw dc
                      xt yt
                      other-pen other-brush body-pen body-brush))))
           (copy
            (lambda ()
              (let ((new (make-object inverted-fungraph-snip% image)))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init (image-width image) (image-height image)))))

 (define invert
   (lambda (image)
     (if (not (image? image))
         (error "argument to invert not an image" image))
     (make-object inverted-fungraph-snip% image)))

 (define overlayed-fungraph-snip%
   (class100 fungraph-snip% (is)
          (private-field
           (images is))
          (inherit
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\o))
              (send s put (length images))
              (for-each
               (lambda (image)
                 (send image write s))
               images)))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (for-each
               (lambda (image)
                 (send image fungraph-draw dc
                       xt yt
                       body-pen body-brush other-pen other-brush))
               images)))
           (copy
            (lambda ()
              (let ((new (make-object overlayed-fungraph-snip% images)))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init (image-width (car images))
                        (image-height (car images))))))

 (define (overlay image i)
   (if (not (image? image))
       (error "argument to overlay not an image" image))
   (let ((w (image-width image))
         (h (image-height image)))
     (if (not (image? i))
         (error "argument to overlay not an image" i))
     (if (not (and (= (image-width i) w)
                   (= (image-height i) h)))
         (error "Only images of equal size can be overlayed"
                (list image i))))
   (make-object overlayed-fungraph-snip% (list image i)))

 (define resized-fungraph-snip%
   (class100 fungraph-snip% (i w h)
          (private-field
           (image i))
          (inherit
           get-width
           get-height
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\r))
              (send image write s)
              (send s put (get-width))
              (send s put (get-height))))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (send image fungraph-draw dc
                    xt yt
                    body-pen body-brush other-pen other-brush)))
           (copy
            (lambda ()
              (let ((new (make-object resized-fungraph-snip% image
                                        (get-width) (get-height))))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init w h))))

 (define (resize-image image . wh)
   (if (not (image? image))
       (error "argument to resize-image not an image" image))
   (let ((width default-image-size)
         (height default-image-size))
     (if (not (null? wh))
         (begin (set! width (car wh))
                (if (not (null? (cdr wh)))
                    (begin (set! height (cadr wh))
                           (if (not (null? (cddr wh)))
                               (error "too many argument to resize-image")))
                    (set! height width))))
     (if (not (and (integer? height)
                   (integer? width)
                   (exact? height)
                   (exact? width)
                   (> height 0)
                   (> width 0)))
         (error "illegal size specification in resize-image" wh))
     (make-object resized-fungraph-snip% image width height)))

 (define stacked-fungraph-snip%
   (class100 fungraph-snip% (t b)
          (private-field
           (top t)
           (bottom b))
          (inherit
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\s))
              (send top write s)
              (send bottom write s)))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (let ((th (image-height top))
                    (bh (image-height bottom)))
                (let* ((h (+ th bh))
                       (inexact-h (exact->inexact h)))
                  (let ((tscale (/ th inexact-h))
                        (bscale (/ bh inexact-h)))
                    (send top fungraph-draw
                          dc
                          (lambda (x y)
                            (xt x (+ (* tscale y) bscale)))
                          (lambda (x y)
                            (yt x (+ (* tscale y) bscale)))
                          body-pen body-brush other-pen other-brush)
                    (send bottom fungraph-draw
                          dc
                          (lambda (x y)
                            (xt x (- (* bscale y) tscale)))
                          (lambda (x y)
                            (yt x (- (* bscale y) tscale)))
                          body-pen body-brush other-pen other-brush))))))
           (copy
            (lambda ()
              (let ((new (make-object stacked-fungraph-snip% top bottom)))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init (image-width t) (+ (image-height t)
                                           (image-height b))))))

 (define (stack top bottom)
   (if (not (image? top))
       (error "argument to stack not an image" top))
   (if (not (image? bottom))
       (error "argument to stack not an image" bottom))
   (if (not (= (image-width top) (image-width bottom)))
       (error "Attempt to stack images of different widths" (list top bottom))
       (make-object stacked-fungraph-snip% top bottom)))

  (define ft-fungraph-snip%
   (class100 fungraph-snip% (ix0 iy0 ix1 iy1 ix2 iy2 w h)
          (private-field
           (x0 ix0)
           (y0 iy0)
           (x1 ix1)
           (y1 iy1)
           (x2 ix2)
           (y2 iy2))
          (inherit
           get-width
           get-height
           get-style)
          (override
           (write
            (lambda (s)
              (send s put (char->integer #\f))
              (send s put (exact->inexact x0))
              (send s put (exact->inexact y0))
              (send s put (exact->inexact x1))
              (send s put (exact->inexact y1))
              (send s put (exact->inexact x2))
              (send s put (exact->inexact y2))
              (send s put (get-width))
              (send s put (get-height))))
           (fungraph-draw
            (lambda (dc xt yt body-pen body-brush other-pen other-brush)
              (send dc set-pen body-pen)
              (send dc set-brush body-brush)
              (send dc draw-polygon
                    (map (lambda (x y)
                           (make-object point%
                                          (xt x y)
                                          (yt x y)))
                         (list x0 x1 x2)
                         (list y0 y1 y2)))))
           (copy
            (lambda ()
              (let ((new (make-object ft-fungraph-snip% x0 y0 x1 y1 x2 y2
                                        (get-width) (get-height))))
                (send new set-style (get-style))
                new))))
          (sequence
            (super-init w h))))

 (define filled-triangle
   (lambda (x0 y0 x1 y1 x2 y2)
     (if (not (real? x0))
         (error "x0 argument to filled-triangle not a real" x0))
     (if (not (<= -1 x0 1))
         (error "x0 argument to filled-triangle not in -1 to 1 range" x0))
     (if (not (real? x1))
         (error "x1 argument to filled-triangle not a real" x1))
     (if (not (<= -1 x1 1))
         (error "x1 argument to filled-triangle not in -1 to 1 range" x1))
     (if (not (real? x2))
         (error "x2 argument to filled-triangle not a real" x2))
     (if (not (<= -1 x2 1))
         (error "x2 argument to filled-triangle not in -1 to 1 range" x2))
     (if (not (real? y0))
         (error "y0 argument to filled-triangle not a real" y0))
     (if (not (<= -1 y0 1))
         (error "y0 argument to filled-triangle not in -1 to 1 range" y0))
     (if (not (real? y1))
         (error "y1 argument to filled-triangle not a real" y1))
     (if (not (<= -1 y1 1))
         (error "y1 argument to filled-triangle not in -1 to 1 range" y1))
     (if (not (real? y2))
         (error "y2 argument to filled-triangle not a real" y2))
     (if (not (<= -1 y2 1))
         (error "y2 argument to filled-triangle not in -1 to 1 range" y2))
     (let ((width default-image-size)
           (height default-image-size))
       (make-object ft-fungraph-snip% x0 y0 x1 y1 x2 y2 width height))))

 (define write-image-as-epsf
   (let ((margin 72.0))
     (lambda (snip filename)
       (let ((pss (current-ps-setup)))
         (send pss set-file filename)
         (send pss set-mode 'file)
         (current-ps-setup pss))
       (let ((dc (make-object post-script-dc% #f)))
         (if (send dc ok?)
             (begin
               (send dc start-doc filename)
               (send dc start-page)
               (let ((wbox (box 0.0))
                     (hbox (box 0.0)))
                 (send snip get-extent dc margin margin wbox hbox #f #f #f #f)
                 (send snip draw dc margin margin margin margin
                       (+ margin (unbox wbox))
                       (+ margin (unbox hbox))
                       0.0 0.0
                       'no-caret))
               (send dc end-page)
               (send dc end-doc)))))))
)
