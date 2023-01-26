(*
Assign00-04: 10 points
Please implement a function that converts a given
string to an integer:
fun str2int(cs: string): int
In particular, it is expected that str2int(int2str(x)) = x
*)
use "assign00-lib.sml";
fun str2int(cs: string): int = 
(
    let
      val ini = Char.ord(#"0")
      val digit = 0
      val len = String.size(cs) - 1
      fun recu(cs, digit, tenth: int): int = 
      (
        let
          val Cha = String.sub(cs, len - digit)
          val intCode = Char.ord(Cha)
          val number = intCode - ini
        in
          if (digit = len) then tenth * number
          else recu(cs, digit + 1, tenth * 10) + tenth * number
        end
      )
    in
      recu(cs, digit, 1)
    end
)
