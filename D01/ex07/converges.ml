let rec converges f x n =
	if n < 0 then false
	else if n = 0 && x <> 0 then false
	else if n <= 0 && x = 0 then true
	else if x = f(x) then true
	else converges f (f x) (n - 1)


let main () = 
	if (converges (( * ) 2) 2 5 = true) then print_endline "TRUE" else print_endline "FALSE" ;
	if (converges (fun x -> x) 2 50 = true) then print_endline "TRUE" else print_endline "FALSE" ;
	if (converges (fun x -> x / 2 + 1) 2 3  = true) then print_endline "TRUE" else print_endline "FALSE" ;
	if (converges (fun x -> x / 2) 5 1 = true) then print_endline "TRUE" else print_endline "FALSE"

let () = main ()