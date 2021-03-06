
;; Jitter Bug by Jeremy Sarchet
;; 
;; Original piece: http://www.openprocessing.org/visuals/?visualID=1238
;;
;; Ported to Abstracting by Ed Cavazos

(size 500 500)

(set! *frames-per-second* 30)

(init-nodebox)

(stroke 0.0)

(set! *draw*

  (let ((rotate

         (let ((x 0)
               (y 0))
           
           (lambda ()
             
             (set! x (+ x 0.5))
             (set! y (+ y 1.0))
             
             (glRotated x 1.0 0.0 0.0)
             (glRotated y 0.0 1.0 0.0))))

        (draw-triangle

         (let ((make-vertex

                (let ((r 100.0)
                      (margin 20))
                  
                  (lambda (n)

                    (let ((t (cond ((<= *mouse-x* margin)             0.0)
                                   ((>= *mouse-x* (- *width* margin)) 2.0)
                                   (else
                                    (processing-map *mouse-x*
                                                    margin (- *width* margin)
                                                    0.0 2.0)))))

                      (let ((i (if (>= t 1) 1 t))

                            (j (if (<= t 1) 1 (processing-map t 1 2 1.0 0.0))))

                        (case n
                          ((0)  (pt (* r    j ) 0.0         (* r     i)))
                          ((1)  (pt (* r    j ) 0.0         (* r (- i))))
                          ((2)  (pt (* r (- j)) 0.0         (* r (- i))))
                          ((3)  (pt (* r (- j)) 0.0         (* r    i)))
                          ((4)  (pt (* r    i ) (* r    j ) 0.0))
                          ((5)  (pt (* r (- i)) (* r    j ) 0.0))
                          ((6)  (pt (* r (- i)) (* r (- j)) 0.0))
                          ((7)  (pt (* r    i ) (* r (- j)) 0.0))
                          ((8)  (pt 0.0         (* r    i ) (* r    j)))
                          ((9)  (pt 0.0         (* r (- i)) (* r    j)))
                          ((10) (pt 0.0         (* r (- i)) (* r (- j))))
                          ((11) (pt 0.0         (* r    i ) (* r (- j)))))))))))

           (lambda (i j k)
             
             (triangle (make-vertex i)
                       (make-vertex j)
                       (make-vertex k))))))

    (lambda ()

      (background 1.0)

      (glTranslated (/ *width* 2.0) (/ *height* 2.0) -100.0)

      (rotate)

      (glLineWidth 2.0)

      (fill 0.0 0.5 1.0 0.5)

      (draw-triangle 0 4 8)
      (draw-triangle 3 5 8)
      (draw-triangle 0 7 9)
      (draw-triangle 3 6 9)
      (draw-triangle 1 4 11)
      (draw-triangle 2 5 11)
      (draw-triangle 1 7 10)
      (draw-triangle 2 6 10))))

(run-nodebox)