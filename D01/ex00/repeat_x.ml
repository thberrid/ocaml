let rec repeat_x n =
	if n < 0 then "Error"
	else if n = 0 then ""
	else "x" ^ repeat_x (n - 1)

let main () =
	print_endline (repeat_x 5) ;
	print_endline (repeat_x ~-42) ;
	print_endline (repeat_x 0) ;
	print_endline (repeat_x 1)

let () = main ()