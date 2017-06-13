grammar-namespace
namespaceDefinition
	" release the current namespace definition and set up the actual namespace."
	^ super namespaceDefinition ==> [ : token |
		self cleanUpState.
		self currentNamespace: token second.
		token.
	]