(set-logic QF_LIA)
(declare-fun x () Int)
(declare-fun y () Int)
(assert (= (+ x (* 2y)) 20))
(assert (= (- x y) 3))
(check-sat) ;no solution
