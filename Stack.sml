(*
cd C:\Users\Patrick\SMLProjects
sml
use "Stack.sml";
*)

val length: int ref = ref 0;
val stack: int list ref = ref [];
val popped: int ref = ref 0;

fun push (value) =
let
  val _ = [];
in
  stack := value @ !stack;
  length := 1 + (!length)
end;

fun pop () =
let
  val result = popped := hd(!stack)
in
  stack := tl(!stack);
  length := (!length) - 1;
  popped
end;


fun peek () = hd(!stack)
fun isEmpty () = null(!stack)

val _ = print "\n-----Begin test cases----- \n";

print "\n\n";
stack;
isEmpty();

push([2]);
push([3]);

stack;
isEmpty();

push([4]);
push([5]);

print "\n\n";
stack;

(*
fun helper (input,acc) =
  if null(input) then acc
  else helper(tl(input),acc+1)

fun length(list) = helper(list,0)

fun push (values, stack) = values @ stack
fun pop (stack) = (hd(stack),tl(stack))
fun peek (stack) = hd(stack)
fun isEmpty (stack) = null(stack)

val stack = [];
val stack1 = push([2],stack);
val stack2 = push([3],stack1);

val stack3 = push([4],stack2);
val stack4 = push([5],stack3);
val stack5 = #2(pop(stack4));
isEmpty stack5;
isEmpty stack;
*)
