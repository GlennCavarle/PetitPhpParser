grammar-keywords
testInterfaceDefinitionWithConstants
	
	self 
		parse: 'interface Iterator {
					const SOME_CONST = 2;
				}'
		rule: #interfaceDeclaration.
