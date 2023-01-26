(*
Assign00-03: 10 points
Please implement a function that converts a given
integer to a string that represents the integer:
fun int2str(i0: int): string
*)
use "assign00-lib.sml";
fun int2str(i0: int): string = 
(
    let
      val ini = Char.ord(#"0")
      val num = i0 mod 10
      val nxt = i0 div 10
      val str = ""
      val res = ""
    in
      if (nxt = 0) then String.str(Char.chr(num + ini))
      else int2str(nxt) ^ String.str(Char.chr(num + ini))
    end
)

