tests-factory-method
testCreateFromTokenWithoutNamespace
	| testStack |
	testStack:= PPPHPNamespaceStack createFromToken: tokenWithoutNamespace.
	
	self assert: testStack getBaseName equals: 'Test'.
	self assert: testStack size equals: 1.
	self assert: (testStack select: [:item | item isMemberOf: PPPHPNamespaceNode ]) size equals: 1.