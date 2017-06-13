grammar-class
classBody
	^ super classBody
		==> [ :arg1 | 
			arg1 second deepFlatten
				select: [ :arg2 | arg2 parsedValue isFragment not ] ]