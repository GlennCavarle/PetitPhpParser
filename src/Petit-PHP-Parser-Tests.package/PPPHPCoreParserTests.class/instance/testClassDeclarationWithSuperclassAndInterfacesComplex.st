grammar-statements
testClassDeclarationWithSuperclassAndInterfacesComplex 
	super testClassDeclarationWithSuperclassAndInterfacesComplex.
	
	self assert: (result isMemberOf: PPPHPClassNode).
	self assert: result nodeName equals: 'Test'.
	self assert: result attributes isEmpty.
	self assert: result behaviouralEntities isEmpty.
	
	self assert: (result superTypes isMemberOf: OrderedCollection).
	self assert: result superTypes size equals: 1.
	self assert: result superTypes first nodeName equals: 'ArrayObject'.
	
	self assert: (result interfaces isMemberOf: OrderedCollection).
	self assert: result interfaces size equals: 3.
	self assert: result interfaces first nodeName equals: 'InterfaceOne'.
	self assert: result interfaces second nodeName equals: 'RootInterface'.
	self assert: result interfaces third nodeName equals: 'Interfacerel'.
	
	self assert: result docBlock isNil.
	self assert: result modifiers size = 0.