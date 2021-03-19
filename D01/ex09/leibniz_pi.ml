let leibniz_pi gap =
	if gap < 0. then ~-1
	else 	let find_pi = fun i -> ((-1.) ** float_of_int (i)) /. float_of_int(2 * i + 1) in
				let delta = fun x -> x -. 4. *. (atan 1.) >= gap in
					let rec loop f index current_pi =
						if delta current_pi then loop f (index + 1) (current_pi +. (f index))
						else index
					in loop find_pi 0 0.

let main () =
	print_int (leibniz_pi 0.05) ; print_endline ""

let () = main ()