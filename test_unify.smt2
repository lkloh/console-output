(set-option :produce-models true)
(set-logic AUFLIA)

(declare-fun x () Int)
(declare-fun y () Int)

(declare-fun z () Int)
(declare-fun w () Int)

(assert (= x y))
(assert (= z w))
(assert (distinct x w))

(check-sat)
(get-value (x))
(get-value (y))
(get-value (z))
(get-value (w))

