let rec iter f x n =
		if n < 0 then ~-1
		else if n = 0 then x
		else if n = 1 then f x
		else iter f (iter f x 1) (n - 1)
		
let main () = 
	print_int (iter (fun x -> x * x) 2 4) ; print_endline "" ;
	print_int (iter (fun x -> x * 2) 2 4) ; print_endline "" 

let () = main ()