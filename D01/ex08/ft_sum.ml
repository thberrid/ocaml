let ft_sum s lower upper =
	if lower > upper then nan
	else let rec loop s lower acc =
		if lower <= upper then loop s (lower + 1) (acc +. (s lower))
		else acc
	in loop s lower 0.0

let main () =
	print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10) ; print_endline ""

let () = main ()