class enum a = { ToInt   : a -> int,
                FromInt : int -> a
                }

val mkEnum [a] (x : { ToInt   : a -> int,
                      FromInt : int -> a }) = x

val enum_int  = { ToInt = fn i => i, FromInt = fn i => i }
val enum_char = { ToInt = ord, FromInt = chr }


fun toInt   [a] (e : enum a) a = e.ToInt a
fun fromInt [a] (e : enum a) i = e.FromInt i

fun to [a] (e: enum a) (from:a) (to:a) =
  let
    val from_i : int = e.ToInt from
    val to_i   : int = e.ToInt to
    fun up i = if (i <= to_i) then
                  ((e.FromInt i) :: (up (i+1)))
                else
                  Nil
  in
    up from_i
  end

fun downto [a] (e: enum a) (from:a) (to:a) =
  let
    val from_i : int = e.ToInt from
    val to_i   : int = e.ToInt to
    fun down i = if (i >= to_i) then
                  ((e.FromInt i) :: (down (i-1)))
                else
                  Nil
  in
    down from_i
  end
