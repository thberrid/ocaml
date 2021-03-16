let ft_string_all f str =
	let rec loop index =
		if (f (String.get str index)) then
			if (index + 1) = String.length str then true
			else loop (index + 1)
		else false
	in
		loop 0
	
let main () = 
	let is_digit = fun c -> c >= '0' && c <= '9' in
	if (ft_string_all is_digit "789465a") then print_endline "TRUE"
	else print_endline "FALSE" 
		;
	if (ft_string_all is_digit "789465") then print_endline "TRUE"
	else print_endline "FALSE" 
		;
	let is_lower = fun c -> c >= 'a' && c <= 'z' in
	if (ft_string_all is_lower "789465") then print_endline "TRUE"
	else print_endline "FALSE"
		; 
	if (ft_string_all is_lower "abxcfdsrt") then print_endline "TRUE"
	else print_endline "FALSE" 
		;
	if (ft_string_all is_lower "asdasdsaD") then print_endline "TRUE"
	else print_endline "FALSE" 

let () = main ()