(set-logic S)
(set-option :produce-models true)

(declare-fun variable177 () Int)
(declare-fun variable178 () Int)
(declare-fun variable179 () Int)
(declare-fun variable184 () Int)
(declare-fun variable185 () Int)
(declare-fun variable186 () Int)
(declare-fun variable187 () Int)
(declare-fun variable188 () Int)
(declare-fun variable189 () Int)
(declare-fun variable190 () Int)
(declare-fun variable191 () Int)
(declare-fun variable192 () Int)
(declare-fun variable204 () Int)
(declare-fun variable205 () Int)
(declare-fun variable261 () Int)
(declare-fun variable262 () Int)
(declare-fun variable264 () Int)
(declare-fun variable265 () Int)
(declare-fun variable266 () Int)
(declare-fun variable267 () Int)
(declare-fun variable268 () Int)
(declare-fun variable269 () Int)
(declare-fun variable270 () Int)
(declare-fun variable271 () Int)
(declare-fun variable272 () Int)
(declare-fun variable273 () Int)
(declare-fun variable274 () Int)
(declare-fun variable275 () Int)
(declare-fun variable276 () Int)
(declare-fun f_prepend (Int Int ) Int)
(assert(= variable272 variable261))
(assert(= variable273 variable262))
(assert(= variable274 variable264))
(assert(= variable272 variable204))
(assert(= variable271 variable205))
(assert(= variable271 variable178))
(assert(= variable274 variable179))
(assert(= variable177 (f_prepend variable178 variable179 )))
(assert(= variable272 variable267))
(assert(= variable268 variable184))
(assert(= variable273 variable185))
(assert(= variable177 variable186))
(assert(= variable184 (f_prepend variable185 variable186 )))
(assert(= variable275 variable187))
(assert(= variable270 variable188))
(assert(= variable265 variable189))
(assert(= variable187 (f_prepend variable188 variable189 )))
(assert(= variable276 variable190))
(assert(= variable269 variable191))
(assert(= variable266 variable192))
(assert(= variable190 (f_prepend variable191 variable192 )))
(check-sat)
(get-model)

