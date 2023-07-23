; An interpreter using applicative-order evaluation will hang in an infinite 
; loop, since the arguments to `test` will be evaluated first and `p` is 
; infinitely recursive.

; On the other hand, a normal-order evaluation would evaluate to `0`, because 
; `p` doesn't get invoked unless the predicate in the `if` statement is false.