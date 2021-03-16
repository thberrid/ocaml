let ft_palindrome = fun str ->
	let rec loop i j = 
		if i >= j then true
		else 
			if (String.get str i) = (String.get str j) then loop (i + 1) (j - 1)
			else false
	in 
		if (String.length str) > 0 then
			loop 0 ((String.length str ) - 1)
		else true

let main () =
	if (ft_palindrome "aloola") then print_endline "true" else print_endline "false" ;
	if (ft_palindrome "aloa") then print_endline "true" else print_endline "false" ;
	if (ft_palindrome "aoa") then print_endline "true" else print_endline "false" ;
	if (ft_palindrome "a") then print_endline "true" else print_endline "false" ;
	if (ft_palindrome "") then print_endline "true" else print_endline "false"

let () = main ()