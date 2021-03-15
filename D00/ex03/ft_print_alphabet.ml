let ft_print_alphabet () = 
	let a = int_of_char 'a' in
	let z = int_of_char 'z' in
		let rec loop current_char =
			if current_char <= z then
			begin
				print_char (char_of_int current_char) ;
				loop (current_char + 1)
			end
		in
		loop a ;
		print_char '\n'

let main () =
	ft_print_alphabet ()

let () = main ()