let ft_rot_n n s =
	let f c =
		let rot_from start = 
			char_of_int ((int_of_char start) + (((int_of_char c) - (int_of_char start) + n) mod 26))
		in
			if (c >= 'a' && c <= 'z') then
				rot_from 'a'
			else if (c >= 'A' && c <= 'Z') then
				rot_from 'A'
			else c
in String.map f s

let main () =
  print_endline (ft_rot_n 0 "az_0789_AZ") ;
  print_endline (ft_rot_n 1 "az_0789_AZ") ;
  print_endline (ft_rot_n 13 "az_0789_AZ") ;
  print_endline (ft_rot_n 52 "az_0789_AZ") ;
  print_endline (ft_rot_n 26 "")

let () = main ()