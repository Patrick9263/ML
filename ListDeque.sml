(*
cd C:\Users\Patrick\SMLProjects
sml
use "ListDeque.sml";
*)

fun helper (input, acc) =
  if null(input) then acc
  else helper(tl(input), acc+1)
fun length (deque) = helper(deque, 0)
fun addFirst (item, deque) = item @ deque
fun addLast (item, deque) = deque @ item
fun removeFirst (deque) = tl(deque)
fun removeLast (deque) = List.take(deque, length(deque)-1)

val deq = [];
val deq2 = addLast([2], deq);
val deq3 = addLast([3], deq2);
val deq4 = addFirst([1], deq3);
val deq5 = addFirst([0], deq4);
