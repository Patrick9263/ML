(*
cd C:\Users\Patrick\SMLProjects
sml
use "stack.sml";

CTRL + Z
carrige return = exitgit
*)

print "Hello World\n";

(*
val test = 2;
val test2 = 3;
val result = test + test2;
result;
*)
val stack = [];
stack;
val append = fn (value, list) => value @ stack;
(*
| (h::t) @ value = h :: t @ value;
*)
val stack1 = append([20],stack);
val stack2 = append([30],stack1);
stack2;

val exit = fn () => "^Z"
