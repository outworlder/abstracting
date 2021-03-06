;;               Scheme library used for Assignement #1
;;                      for the course comp-521
;;
;;                        by David St-Hilaire
;;                            winter 2008
;;
;;
;; This library source file contains various well known and less well
;; known functions used in functionnal programming. Authors referrence
;; will not be cited but most of the code here was not invented by the
;; author of this file. Also, these functions will not be documented
;; because names and uses of these are trivial for any functionnal
;; programmer.


; Compiler declarations for optimizations
;; (declare (standard-bindings)
;;          (extended-bindings)
;;          (block)
;;          (not safe)
;;          (fixnum))


;;;;;;;;;;;;;;;;;;;;;;; list operations ;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (list-remove comparator el list)
  (let loop ((list list)
             (acc '()))
    (if (not (pair? list))
        (reverse acc)
        (if (comparator (car list) el)
            (loop (cdr list) acc)
            (loop (cdr list) (cons (car list) acc))))))

(define (filter pred list)
  (cond
   ((not (pair? list)) '())
   ((pred (car list)) (cons (car list) (filter pred (cdr list))))
   (else (filter pred (cdr list)))))

(define (exists pred list)
  (let loop ((list list) (acc #f))
    (if (not (pair? list))
        acc
        (loop (cdr list) (or acc (pred (car list)))))))

(define (forall pred list)
  (let loop ((list list) (acc #t))
    (if (not (pair? list))
        acc
        (loop (cdr list) (and acc (pred (car list)))))))

(define (fold-l f acc list)
  (if (not (pair? list))
      acc
      (fold-l f (f acc (car list)) (cdr list))))

(define (cleanse lst)
  (cond
   ((not (pair? lst)) '())
   ((null? (car lst)) (cleanse (cdr lst)))
   (else (cons (car lst) (cleanse (cdr lst))))))

(define (union l1 l2)
  (let loop ((l1 l1) (acc l2))
    (if (not (pair? l1))
        acc
        (if (member (car l1) l2)
            (loop (cdr l1) acc)
            (loop (cdr l1) (cons (car l1) acc))))))


;; (define-macro (extremum-fonction comparator opposite-extremum)
;;   (let ((lst-sym (gensym 'lst-sym))
;;         (extremum-sym (gensym 'extremum-sym))
;;         (loop-sym (gensym 'loop-sym)))
;;     `(lambda (,lst-sym) 
;;        (let ,loop-sym ((,lst-sym ,lst-sym)
;;                        (,extremum-sym ,opposite-extremum))
;;             (cond
;;              ((not (pair? ,lst-sym)) ,extremum-sym)
;;              ((,comparator (car ,lst-sym) ,extremum-sym)
;;               (,loop-sym (cdr ,lst-sym) (car ,lst-sym)))
;;              (else
;;               (,loop-sym (cdr ,lst-sym) ,extremum-sym)))))))

(define-syntax extremum-fonction
  (syntax-rules ()
    ((extremum-fonction comparator opposite-extremum)
     (lambda (lst)
       (let loop ((lst lst)
                  (extremum opposite-extremum))
         (cond ((not (pair? lst)) extremum)
               ((comparator (car lst) extremum)
                (loop (cdr lst) (car lst)))
               (else
                (loop (cdr lst) extremum))))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;; Math stuff ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define maximum (extremum-fonction > -inf.0))
(define minimum (extremum-fonction < +inf.0))

(define (average sample)
  (/ (apply + sample) (length sample)))

(define (variance sample)
  (define mean (average sample))
  (define N (length sample))
  (/ (fold-l (lambda (acc n) (+ (expt (- n mean) 2) acc))
             0
             sample)
     N))

(define (standard-deviation sample) (sqrt (variance sample)))

(define (complex-conjugate z)
  (make-rectangular (real-part z) (- (imag-part z))))

(define pi (* 2 (asin 1)))

;;;;;;;;;;;;;;;;;;;;;; Boolean operation ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (define-macro (xor b1 b2) `(not (eq? ,b1 ,b2)))

(define-syntax xor
  (syntax-rules ()
    ((xor b1 b2)
     (not (eq? b1 b2)))))

;;;;;;;;;;;;;;;;;;;;;;;; Simple macros ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (define-macro (for var init-val condition true . false)
;;   (let ((loop (gensym)))
;;     `(let ,loop ((,var ,init-val))
;;           (if ,condition
;;               (begin ,true (,loop (+ ,var 1)))
;;               ,(if (not (null? false))
;;                    false)))))

(define-syntax for
  (syntax-rules ()

    ((for var init-val condition true false)
     (let loop ((var init-val))
       (if condition
           (begin
             true
             (loop (+ var 1)))
           (begin
             false))))

    ((for var init-val condition true)
     (for var init-val condition true #f))

    ))

;; (define-macro (make-vector2d height width . init-val)
;;   (let ((vector-sym (gensym))
;;         (row-sym (gensym)))
;;     `(let ((,vector-sym (make-vector ,height #f)))
;;        (for ,row-sym 0 (< ,row-sym ,height)
;;             (vector-set! ,vector-sym ,row-sym
;;                          (make-vector ,width ,(if (pair? init-val)
;;                                                   (car init-val)
;;                                                   #f))))
;;        ,vector-sym)))

(define-syntax make-vector2d
  (syntax-rules ()

    ((make-vector2d height width init-val)
     (let ((vector (make-vector height #f)))
       (for row 0 (< row height)
            (vector-set! vector row
                         (make-vector width init-val)))
       vector))

    ((make-vector-2d height width)
     (make-vector-2d height width #f))

    ))

;; (define-macro (vector2d-ref vector row col)
;;   `(vector-ref (vector-ref ,vector ,row) ,col))

(define-syntax vector2d-ref
  (syntax-rules ()
    ((vector2d-ref vector row col)
     (vector-ref (vector-ref vector row) col))))

;; (define-macro (vector2d-set! vector row col val)
;;   `(vector-set! (vector-ref ,vector ,row) ,col ,val))

(define-syntax vector2d-set!
  (syntax-rules ()
    ((vector2d-set! vector row col val)
     (vector-set! (vector-ref vector row) col val))))

;; (define-macro (make-vector3d i-length j-length k-length . init-val)
;;   (let ((vector-sym (gensym))
;;         (i-sym (gensym))
;;         (j-sym (gensym)))
;;     `(let ((,vector-sym (make-vector2d ,i-length ,j-length #f)))
;;        (for ,i-sym 0 (< ,i-sym ,i-length)
;;             (for ,j-sym 0 (< ,j-sym ,j-length)
;;                  (vector2d-set! ,vector-sym ,i-sym ,j-sym
;;                                 (make-vector ,k-length ,(if (pair? init-val)
;;                                                             (car init-val)
;;                                                             #f)))))
;;        ,vector-sym)))

(define-syntax make-vector3d
  (syntax-rules ()
    ((make-vector3d i-length j-length k-length init-val)
     (let ((vector (make-vector2d i-length j-length #f)))
       (for i 0 (< i i-length)
            (for j 0 (< j j-length)
                 (vector2d-set! vector i j (make-vector k-length init-val))))
       vector))

    ((make-vector3d i-length j-length k-length)
     (make-vector3d i-length j-length k-length #f))))

;; (define-macro (vector3d-ref vector i j k)
;;   `(vector-ref (vector2d-ref ,vector ,i ,j) ,k))

(define-syntax vector3d-ref
  (syntax-rules ()
    ((vector3d-ref vector i j k)
     (vector-ref (vector2d-ref vector i j) k))))

;; (define-macro (vector3d-set! vector i j k val)
;;   `(vector-set! (vector2d-ref ,vector ,i ,j) ,k ,val))

(define-syntax vector3d-set!
  (syntax-rules ()
    ((vector3d-set! vector i j k val)
     (vector-set! (vector2d-ref vector i j) k val))))

; Randomize current mrg's seed
;; (random-source-randomize! default-random-source)