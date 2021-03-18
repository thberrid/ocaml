let rec converges f x n =
	if n <= 0 then false
	else if x = f(x) then true
	else converges f (f x) (n - 1)


let main () = 
	if (converges (fun x -> x) 2 50 = true) then print_endline "TRUE" else print_endline "FALSE" ;
	if (converges (fun x -> x / 2) 2 3  = true) then print_endline "TRUE" else print_endline "FALSE" ;
	if (converges (fun x -> x / 2) 2 2 = true) then print_endline "TRUE" else print_endline "FALSE"

let () = main ()