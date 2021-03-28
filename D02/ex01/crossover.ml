let crossover lista listb =
	let rec loopB elemnt list = match list with
			| [] -> false
			| head :: tail -> (elemnt = head) || (loopB elemnt tail)
	in
		let rec loopA la lb outputlist = match la with
				| [] -> outputlist
				| head :: tail -> 	if (loopB head listb) then loopA tail lb (outputlist @ [head])
														else loopA tail lb outputlist
			in loopA lista listb []

(* tests *)

let rec print_intlist list = match list with
	| tete::queue -> print_int tete ; print_char ' ' ; print_intlist queue
	| [] 					-> print_endline "list end"

let la = 0 :: 1 :: 2 :: 3 :: 4 :: 5 :: []
let lb = 5 :: 6 :: 7 :: 8 :: 9 :: 0 :: []
let lc = []
let ld = 6 :: 7 :: 8 :: 9 :: []

let main () = 
	print_intlist (crossover la lb) ;
	print_intlist (crossover lc lb) ;
	print_intlist (crossover la ld)

let () = main ()