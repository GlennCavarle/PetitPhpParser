grammar-keywords
testInterfaceDefinitionWithConstantsList
	
	self 
		parse: 'interface Iterator {
					const SOME_CONST = 2, OTHER_CONST = 4;
				}'
		rule: #interfaceDeclaration.
