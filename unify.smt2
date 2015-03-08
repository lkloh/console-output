(set-logic S)
(set-option :produce-models true)

(declare-fun f (Int) Int)
(declare-fun a () Int) ; a is a constant
(declare-fun c () Int) ; a is a constant
(declare-fun d () Int) ; a is a constant
(declare-const b Int) ; syntax sugar for (declare-fun b () Int)
(assert (= c a))
(assert (> a d))
(assert (> b a))
(assert (= (f 10) 1))

(check-sat)
(get-model)
