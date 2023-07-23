; This new-if procedure is not a special form but rather a procedure call, and 
; therefore all of the arguments will be evaluated first before they are passed 
; to `cond`. This means that the predicate is ignored and the new `sqrt-iter` 
; procedure will call itself recursively forever.