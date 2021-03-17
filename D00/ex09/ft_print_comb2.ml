let ft_print_comb2 () =
	let rec loop n1 n2 =
		let print_n n = 
			if n < 10 then print_char '0' ;
			print_int n ;
		in
			if n1 <= 98 then
				if n2 < 100 then
					if n1 < n2 then
						begin
							print_n n1 ;
							print_char ' ';
							print_n n2 ;
							if n1 <> 98 || n2 <> 99 then
								begin
									print_char ',' ;
									print_char ' ' ;
									loop n1 (n2 + 1)
								end
							else print_char '\n'
						end
					else loop n1 (n1 + 1)
				else loop (n1 + 1) (n1 + 2)
in loop 0 0

let main () =
	ft_print_comb2 ()

let () = main ()