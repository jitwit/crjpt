(define people
  '(charlie eva natasha joseph))

(define (random-element lst)
  (list-ref lst (random (length lst))))

(define (team)
  (let* ((p1 (random-element people))
         (p2 (random-element (remq p1 people))))
    (list p1 p2)))

(define (deal)
  (let ((t1 (team)))
    (values t1 (filter (lambda (p) (not (memq p t1)))
                       people))))
