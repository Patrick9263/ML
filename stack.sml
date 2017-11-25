(*
cd C:\Users\Patrick\SMLProjects
sml
use "stack.sml";

CTRL + Z
carrige return = exitgit
*)

(*
fun append (values, list) =
if null(values) then list
else append(tl(values), list)
*)

fun helper (input,acc) =
  if null(input) then acc
  else helper(tl(input),acc+1)

fun length(list) = helper(list,0)

fun push (values, stack) = values @ stack
fun pop (stack) = (hd(stack),tl(stack))
fun peek (stack) = hd(stack)

fun isEmpty (stack) =
  if null(stack) then true
  else false

val stack = [];
val stack1 = push([2],stack);
val stack2 = push([3],stack1);

val stack3 = push([4],stack2);
val stack4 = push([5],stack3);
val stack5 = #2(pop(stack4));
isEmpty stack5;
isEmpty stack;
