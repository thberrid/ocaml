let ft_print_comb () =
	let a = 0 in
	let b = 1 in
	let c = 2 in
		let rec loop x y z =
			if x < 8 then
					if y < 9 then
						if z < 10 then
							begin
							print_int x ; print_int y ; print_int z ; print_string " ";
							loop x y (z + 1)
							end
						else
							loop x (y + 1) (y + 2)
					else
						loop (x + 1) (x + 2) (x + 3)
		in
		loop a b c ;
		print_char '\n'

let main () =
	ft_print_comb ()

let () = main ()