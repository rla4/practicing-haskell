{------------------------------------------------------------------------------
 | 1) Redefining Take and Drop
 ------------------------------------------------------------------------------}

{------------------------------------------------------------------------------
	take' function
 ------------------------------------------------------------------------------}

take' :: Integer -> [a] -> [a]
take' n [] = []
take' 0 xs = []
take' n (x:xs) = x : take' (n-1) xs

{------------------------------------------------------------------------------
	drop' function
 ------------------------------------------------------------------------------}

drop' n [] = []
drop' 0 l = l
drop' n (x:xs) = drop' (n - 1) xs

{------------------------------------------------------------------------------
	ao usar drop n de uma lista infinita, o programa entra em loop
	imprimindo os elementos da lista at� que seja interrompido.

		Ex: drop 3 [1..] resulta na impress�o de [4,5,6,7,8...120382] 
			(considerando que a execu��o foi interrompida neste ponto)
			
	usando a redefini��o de drop, com as primeiras duas express�es trocadas,
	obtive o mesmo resultado: funciona normalmente pra listas finitas,
	e imprime at� ser interrompido quando aplicado a listas infinitas.
 ------------------------------------------------------------------------------}

{------------------------------------------------------------------------------
 | 2) Extending Permutations' list-comprehension expressions
 ------------------------------------------------------------------------------}

{------------------------------------------------------------------------------
	permutations function
 ------------------------------------------------------------------------------}

permutations [] = [[]]
permutations (xs) = [ r | z <- xs, r <- map (z:) (permutations (remove z xs))]

remove :: Eq a => a -> [a] -> [a]
remove x (y:ys) = if (x == y) then ys else y:(remove x ys)

{------------------------------------------------------------------------------
	extended permutations function
 ------------------------------------------------------------------------------}
