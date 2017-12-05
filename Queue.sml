(*
cd C:\Users\Patrick\SMLProjects
sml
use "Queue.sml";
*)

val length: int ref = ref 0;

val head: int list ref = ref [];
val tail: int list ref = ref [];
val queue: (int list ref * int list ref) ref = ref (head, tail);


fun enqueue (value) =
let
  val add =  ref [value];
in
  if null(!head) then (
    head := add;
    tail := add;
    queue := (head, tail);
    length := 1 + (!length)
    ) else (
      newTail
      tail := (!tail);
      queue := (head, tail);
      length := 1 + (!length)
    )
end;

(*
fun dequeue () =
let
  val _ = [];
in
  length := (!length) - 1;
  queue := tl(!queue)
end;

fun isEmpty () = null(!queue)
*)

(*
recursive datatypes in ML

(int, ref(in ref))
best guess
*)
