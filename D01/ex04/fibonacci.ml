let fibonacci n = 
	let rec aux n acc1 acc2 =
		if n < 0 then ~-1
		else if n = 0 then 0
		else if n = 1 then acc2
		else aux (n - 1) (acc2) (acc1 + acc2) 
	in aux n 0 1

let main () =
	print_int ~-1 ; print_string ": " ; print_int (fibonacci ~-1) ; print_endline "" ;
	print_int 0 ; print_string ": " ; print_int (fibonacci 0) ; print_endline "" ;
	print_int 1 ; print_string ": " ; print_int (fibonacci 1) ; print_endline "" ;
	print_int 2 ; print_string ": " ; print_int (fibonacci 2) ; print_endline "" ;
	print_int 3 ; print_string ": " ; print_int (fibonacci 3) ; print_endline "" ;
	print_int 4 ; print_string ": " ; print_int (fibonacci 4) ; print_endline "" ;
	print_int 5 ; print_string ": " ; print_int (fibonacci 5) ; print_endline "" ;
	print_int 6 ; print_string ": " ; print_int (fibonacci 6) ; print_endline "" ;
	print_int 7 ; print_string ": " ; print_int (fibonacci 7) ; print_endline "" ;
	print_int 8 ; print_string ": " ; print_int (fibonacci 8) ; print_endline "" ;
	print_int 9 ; print_string ": " ; print_int (fibonacci 9) ; print_endline ""

let () = main ()