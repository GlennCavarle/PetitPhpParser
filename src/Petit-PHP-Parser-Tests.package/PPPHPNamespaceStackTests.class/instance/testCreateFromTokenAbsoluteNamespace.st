tests-factory-method
testCreateFromTokenAbsoluteNamespace
	| testStack |
	testStack:= PPPHPNamespaceStack createFromToken: tokenAbsoluteNamespace.
	
	self assert: testStack getBaseName equals: 'myclass'.
	self assert: testStack size equals: 3.
	self assert: testStack last namespaceName equals: $\.
	self assert: testStack last isRoot.
	self assert: testStack second namespaceName equals: 'myspace'.
	