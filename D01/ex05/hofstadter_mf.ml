let rec hsf_f n =
	if n < 0 then ~-1
	else if n = 0 then 1
	else n - hsf_m (hsf_f (n - 1)) 

and hsf_m n =
	if n < 0 then ~-1
	else if n = 0 then 0
	else n - hsf_f (hsf_m (n - 1))

let main () =
	print_int (hsf_m 0) ; print_endline "" ;
	print_int (hsf_f 0) ; print_endline "" ;
	print_int (hsf_m 4) ; print_endline "" ;
	print_int (hsf_f 4) ; print_endline ""

let () = main ()