tests-factory-method
testGetBasename
	|testStack|
	testStack := PPPHPNamespaceStack createFromToken: tokenAbsoluteNamespace.
	self assert: testStack getBaseName equals: 'myclass'.