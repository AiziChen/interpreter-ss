(define calc
  (lambda (exp)
    (cond
      [(number? exp) exp]
      [else
       ((atom->function (first exp))
        (calc (second exp))
        (calc (third exp)))])))

(define first car)
(define second cadr)
(define third caddr)

(define atom->function
  (lambda (a)
    (case a
      ['+ +]
      ['- -]
      ['* *]
      ['/ /])))

