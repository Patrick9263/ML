(*
cd C:\Users\Patrick\SMLProjects
sml
use "LinkedList.sml";
*)

fun helper (input, acc) =
  if null(input) then acc
  else helper(tl(input), acc+1)
fun length (deque) = helper(deque, 0)

fun addFirst (item, deque) = item @ deque
fun addLast (item, deque) = deque @ item
fun removeFirst (deque) = tl(deque)
fun removeLast (deque) = List.take(deque, length(deque)-1)

fun isEmpty (deque) = null(deque)
