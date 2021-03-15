let rec ft_power x y =
	if y > 0 then
		x  * (ft_power x (y - 1))
	else 1

let main () =
	print_int (ft_power 2 4) ; print_char '\n' ;
	print_int (ft_power 10 0) ; print_char '\n' ;
	print_int (ft_power 0 10) ; print_char '\n'

let () = main ()