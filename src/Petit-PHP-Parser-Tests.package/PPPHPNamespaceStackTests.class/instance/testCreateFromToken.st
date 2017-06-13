tests-factory-method
testCreateFromToken
	| testStack |
	testStack:= PPPHPNamespaceStack createFromToken: tokenNamespaced.
	
	self assert: testStack getBaseName equals: 'Test'.
	self assert: testStack size equals: 3.
	self assert: testStack last namespaceName equals: 'vendor'.
	self assert: testStack second namespaceName equals: 'component'.
	self assert: testStack flattenNamespace equals: 'vendor\component\Test'.