(set-logic QF_LIA)
(set-option :produce-unsat-cores true)

(declare-fun a () Int)
(declare-fun b () Int)


(define-fun one () Bool (= a 1))
(define-fun two () Bool (< a 0))


(assert (! one :named a1))
(assert (! two :named a2))

(check-sat)
(get-unsat-core)