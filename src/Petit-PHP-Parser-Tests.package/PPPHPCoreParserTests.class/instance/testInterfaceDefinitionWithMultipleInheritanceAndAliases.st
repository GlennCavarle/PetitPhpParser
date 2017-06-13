grammar-statements
testInterfaceDefinitionWithMultipleInheritanceAndAliases
	| typeNode |
	super testInterfaceDefinitionWithMultipleInheritanceAndAliases.
	
	typeNode := result last.
	
	self assert: (typeNode isMemberOf: PPPHPInterfaceNode ).
	self assert: (typeNode superTypes size = 3).
	self assert: (typeNode superTypes first hasAlias).
	self assert: (typeNode superTypes first alias flattenNamespace = 'Iterator').
	self assert: (typeNode superTypes second hasAlias).
	self assert: (typeNode superTypes second alias flattenNamespace = 'Airwalker').
	self assert: (typeNode superTypes third hasAlias not).