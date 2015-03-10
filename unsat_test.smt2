(set-logic QF_LIA)
(set-option :produce-unsat-cores true)

(declare-fun ph1 () Int)
(declare-fun ph1p () Int)
(declare-fun ph3 () Int)
(declare-fun ph3p () Int)
(declare-fun ph4 () Int)
(declare-fun ph4p () Int)

(define-fun one () Bool (= ph3p (+ ph1 1)))
(define-fun two () Bool (= ph3 (+ ph1 1)))
(define-fun three () Bool (= ph1p (+ ph1 1)))
(define-fun four () Bool (= ph4p (+ ph1p 1)))
(define-fun five () Bool (>= ph1 0))
(define-fun six () Bool (>= ph4 0))

(define-fun secondpartA () Bool (or (= ph4 0) (<= ph3 ph4) ))
(define-fun secondpartB () Bool (or (= ph3p 0) (<= ph4p ph3p) ))



(assert (! one :named a1))
(assert (! two :named a2))
(assert (! three :named a3))
(assert (! four :named a4))
(assert (! five :named a5))
(assert (! six :named a6))
(assert (! secondpartA :named spA))
(assert (! secondpartB :named spB))

(check-sat)
(get-unsat-core)