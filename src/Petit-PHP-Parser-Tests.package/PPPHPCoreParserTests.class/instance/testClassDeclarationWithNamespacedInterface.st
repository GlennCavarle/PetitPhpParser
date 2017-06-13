grammar-statements
testClassDeclarationWithNamespacedInterface
	super testClassDeclarationWithNamespacedInterface.
	
	self assert: (result isMemberOf: PPPHPClassNode).
	self assert: result nodeName equals: 'Test'.
	self assert: result attributes isEmpty.
	self assert: result behaviouralEntities isEmpty.
	self assert: (result superTypes isMemberOf: OrderedCollection).
	self assert: result superTypes size equals: 0.
	
	self assert: (result interfaces isMemberOf: OrderedCollection).
	self assert: result interfaces size equals: 1.
	self assert: result interfaces first nodeName  equals: 'Serializable'.
	
	self assert: result docBlock isNil.
	self assert: result parentNamespace isNil.
	self assert: result modifiers size = 0.