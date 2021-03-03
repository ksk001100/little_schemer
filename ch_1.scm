(define (println target)
    (display target)
    (newline))

(define (atom? x)
  (and (not (pair? x)) (not (null? x))))

(println (quote atom))

(println (quote turkey))

(println (quote 1492))

(println (quote u))

(println (quote *abc$))

(println (quote (atom)))

(println (quote (atom turkey or)))

; (quote (atom turkey) or)

(println (quote ((atom turkey) or)))

(println (quote xyz))

(println (quote (x y z)))

(println (quote ((x y) z)))

(println (quote (how are you doing so far)))

(println (quote ()))

(println (quote (() () () ())))

(println (car (quote (a b c))))

(println (car (quote ((a b c) x y z))))

; (println (car (quote hotdog)))

; (println (car (quote ())))

(println (car (quote (((hotdogs)) (and) (pickle) relish))))

(println (car (car (quote (((hotdogs)) (and) (pickle) relish)))))

(println (cdr (quote (a b c))))

(println (cdr (quote ((a b c) x y z))))

(println (cdr (quote (hamburger))))

(println (cdr (quote ((x) t r))))

; (println (cdr (quote hotdogs)))

; (println (cdr (quote ())))

(println (car (cdr (quote ((b) (x y) ((c)))))))

(println (cdr (cdr (quote ((b) (x y) ((c)))))))

; (println (cdr (car (quote (a (b (c)) d)))))

(println (cons
    (quote peanut)
    (quote (butter and jelly))))

(println (cons
    (quote (banana and))
    (quote (peanut butter and jelly))))

(println (cons
    (quote ((help) this))
    (quote (is very ((hard) to learn)))))

(println (cons
    (quote ())
    (quote ())))

(println (cons
    (quote (a b (c)))
    (quote ())))

(println (cons (quote a)
               (quote ())))

(println (cons
    (quote ((a b c)))
    (quote b)))

(println (cons
    (quote a)
    (quote b)))

(println (cons (quote a)
               (car (quote ((b) c d)))))

(println (cons (quote a)
               (cdr (quote ((b) c d)))))

(println (null?
          (quote ())))

(println (null?
          (quote (a b c))))

(println (null?
          (quote spaghetti)))

(println (atom? (quote Harry)))

(println (atom? (quote (Harry had a heap of apples))))

(println (atom? (car (quote (Harry had a head of apples)))))

(println (atom? (cdr (quote (Harry had a head of apples)))))

(println (atom? (cdr (quote (Harry)))))

(println (atom? (car (cdr (quote (swing low sweet cherry oat))))))

(println (atom? (car (cdr (quote (swing (low sweet) cherry oat))))))

(let ((a1 (quote Harry))
      (a2 (quote Harry)))
  (println (eq? a1 a2)))

(let ((a1 (quote margarine))
      (a2 (quote butter)))
  (println (eq? a1 a2)))

(let ((a1 (quote ()))
      (a2 (quote (strawberry))))
  (println (eq? a1 a2)))

(let ((n1 6)
      (n2 7))
  (println (eq? n1 n2)))

(let ((l (quote (Mary had a little lamb chop)))
      (a (quote Mary)))
  (println (eq? (car l) a)))

(let ((l (quote (soured milk)))
      (a (quote milk)))
  (println (eq? (cdr l) a)))

(let ((l (quote (beans beans we need jelly beans))))
  (println (eq? (car l)
                (car (cdr l)))))
