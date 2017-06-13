grammar-class
classBody
	^ (comment star
		,
			(self
				inCB: (useStatement / methodDefinition / classFields / comment) token star))
		==> [ :arg1 | arg1 second ]