let rec ft_countdown n =
	if n > 0 then
	begin
		print_int (n) ;
		print_char '\n' ; 
		ft_countdown (n - 1)
	end
	else print_endline "0"


let main () =
	ft_countdown 5 ;
	ft_countdown 0 ;
	ft_countdown ~-1

let () = main ()