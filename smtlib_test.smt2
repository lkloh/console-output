(set-logic AUFLIA)
(set-option :produce-models true)

; (assert (forall ((variable193 Int)) (= variable193 10000) ))


(assert (forall ((variable193 Int))(forall ((variable194 Int))(forall ((variable195 Int))(forall ((variable196 Int))(forall ((variable197 Int))(forall ((variable198 Int))(forall ((variable199 Int))(forall ((variable200 Int))(forall ((variable201 Int))(= variable193 10000)))))))))) )
(check-sat)
(get-model)
