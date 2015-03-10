(set-option :produce-models true)
(set-logic AUFLIA)

(declare-fun x () Int)
(declare-fun y () Int)

(declare-fun z () Int)
(declare-fun w () Int)
(declare-const a Int)

(assert (= a 3))
(assert (= x y))
(assert (= z w))
(assert (distinct x w))

(check-sat)
(get-model)

