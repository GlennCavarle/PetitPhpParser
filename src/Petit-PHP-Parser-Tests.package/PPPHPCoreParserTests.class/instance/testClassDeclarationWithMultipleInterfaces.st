grammar-statements
testClassDeclarationWithMultipleInterfaces
	| interface |
	super testClassDeclarationWithMultipleInterfaces.
	
	self assert: (result isMemberOf: PPPHPClassNode).
	self assert: result nodeName equals: 'Test'.
	self assert: result attributes isEmpty.
	self assert: result behaviouralEntities isEmpty.
	self assert: (result superTypes isMemberOf: OrderedCollection).
	self assert: result superTypes size equals: 0.
	
	self assert: (result interfaces isMemberOf: OrderedCollection).
	self assert: result interfaces size equals: 3.
	self assert: result interfaces first nodeName equals: 'Testinterface'.
	self assert: result interfaces second nodeName equals: 'ArrayAccess'.
	
	interface:= result interfaces third.
	self assert: interface nodeName equals: 'intfa'.
	self assert: interface parentNamespace namespaceName equals: 'subtype'.
	self assert: interface parentNamespace parentNamespace namespaceName equals: 'component'.
	self assert: interface parentNamespace parentNamespace parentNamespace namespaceName equals: 'vendor'.
	
	self assert: result docBlock isNil.
	self assert: result modifiers size = 0.