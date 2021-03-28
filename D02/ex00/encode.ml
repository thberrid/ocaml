let encode list = 
	let rec loop inputlist outputlist count = match inputlist with 
		| [] -> []
		| head :: (tail :: _ as next)	-> if head = tail then loop next outputlist (count + 1)
																		else loop next (outputlist @ [(count, head)]) 1 
		| [x]													-> outputlist @ [(count, x)] 
	in loop list [] 1


(* tests *)

let rec print_charlist list = match list with
	| tete::queue -> print_int (fst tete) ; print_char ' ' ; print_char (snd tete) ; print_endline "" ; print_charlist queue
	| [] 					-> print_endline ""

let rec print_intlist list = match list with
	| tete::queue -> print_int (fst tete) ; print_char ' ' ; print_int (snd tete) ; print_endline "" ; print_intlist queue
	| [] 					-> print_endline ""

let list1 = 4 :: 5 :: 6 :: 9 :: 9 :: 9 :: 9 :: []
let list_char = '0' :: 'a' :: 'a' :: 'a' :: 'b' :: 'a' :: []

let main () = 
	print_charlist (encode list_char) ;
	print_intlist (encode list1)

let () = main ()