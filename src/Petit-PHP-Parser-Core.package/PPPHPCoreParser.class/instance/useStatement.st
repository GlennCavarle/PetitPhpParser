grammar-namespace
useStatement
	^ super useStatement
		==> [ :arg1 | 
			| tmp1 |
			tmp1 := arg1 first second first first.
			tmp1 ]