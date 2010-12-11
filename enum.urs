(* enum class providing next, prev and range like functions to, downto
*)

class enum

val mkEnum  : a ::: Type -> {ToInt   : a -> int,
                             FromInt : int -> a } -> enum a

val toInt   : a ::: Type -> enum a -> a -> int
val fromInt : a ::: Type -> enum a -> int -> a
val next    : a ::: Type -> enum a -> a -> a (* calling isStart on a if (isStart a) yields true causes a failure (not using option for speed reasons? ) *)
val prev    : a ::: Type -> enum a -> a -> a (* dito *)

(* implementations *)
val enum_int  : enum int 
val enum_char : enum char


val to      : a ::: Type -> enum a -> a -> a -> list a
val downto  : a ::: Type -> enum a -> a -> a -> list a
