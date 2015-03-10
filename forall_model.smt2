(set-logic AUFLIA)
(set-option :produce-models true)

; exists y, forall x ((0 < x AND x < 5) => (y > x))

(assert 
	(exists ((y Int))
		(forall ((x Int))
			(=>
				(and 
					(> x 0)
					(< x 5)
				)
				(> y x)
			)
		)
	) 
)

(check-sat)
(get-model)