(*
fun fact(x: int): int =
  if x > 0 then x * fact(x-1) else 1
*)

(*
Assign00-01: 10 points
Please find the first integer N such that the
evaluation of fact(N) in SML/NJ yields an Overflow
exception.
*)

fun firInt(num: int): int= 
  let
    fun fact(x: int): int = 
      if x > 0 then x * fact(x-1) else 1
    fun det(x:int ): int = 
      fact(x) handle Overflow => 0
  in
    if det(num) <> 0 then firInt(num + 1) else num
  end
val N = firInt(0);
