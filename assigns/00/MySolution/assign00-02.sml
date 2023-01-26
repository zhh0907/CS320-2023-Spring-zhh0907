(*
Assign00-02: 10 points
Please implement a function that tests whether a
given natural number is a prime:
fun isPrime(n0: int): bool
*)

fun isPrime(n0: int): bool =
(
    let
        val n1 = 2
        fun testP(n0, n1): bool =
        (
            if n0 = n1 then true
            else
            if n0 mod n1 = 0 then false
            else testP(n0, n1 + 1)
        )
    in
        if n0 = 0 then false
        else
        if n0 = 1 then false
        else 
        if n0 = 2 then true 
        else testP(n0, n1)
    end


)

