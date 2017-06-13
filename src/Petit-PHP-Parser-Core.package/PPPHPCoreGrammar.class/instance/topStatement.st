accessing
topStatement
	^ whitespace / namespaceStatement / interfaceDeclaration
		/ classDeclaration / traitDeclaration / functionDeclaration
		/ innerStatement / comment