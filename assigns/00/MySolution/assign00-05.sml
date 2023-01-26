(*
Assign00-05: 10 points
Please implement a function that returns the reverse of
a given string:
fun stringrev(cs: string): string
*)
fun stringrev(cs: string): string =
(
    let
      val digit = 0
      val len = String.size(cs) - 1
      fun recu(cs, digit): string = 
      (
        if digit = len then String.str(String.sub(cs,digit))
        else recu(cs, digit + 1) ^ String.str(String.sub(cs,digit))
      )
    in
      if len + 1 > 0 then recu(cs, digit)
      else ""
    end

)