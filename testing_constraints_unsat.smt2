(set-option :produce-models true)
(set-logic AUFLIA)

(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun d () Int)
(declare-fun e () Int)
(declare-fun f () Int)

(declare-fun addition (Int Int) Int)
(assert (distinct a b c))
(assert (distinct d e f))


(assert (= c (addition a b)))
(assert (= f (addition d e)))
(assert (= c f))

(check-sat)
(get-model)




