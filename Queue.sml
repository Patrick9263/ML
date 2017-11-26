(*
cd C:\Users\Patrick\SMLProjects
sml
use "queue.sml";
*)

fun helper (queue, acc) =
  if null(queue) then acc
  else helper(tl(queue), acc+1)

fun length (queue) = helper (queue, 0)

fun enqueue (value, queue) = queue @ value
fun dequeue (queue) = tl(queue)
fun isEmpty (queue) = null(queue)

val q = [];
val q2 = enqueue([1], q);
val q3 = enqueue([2], q2);
val q4 = enqueue([3], q3);

val q5 = dequeue(q4);
val q6 = dequeue(q5);
isEmpty(q);
isEmpty(q5);
