tests-factory-method
testCreateFromTokenRootedNamespace
	| testStack |
	testStack:= PPPHPNamespaceStack createFromToken: tokenRootedNamespace.
	
	self assert: testStack getBaseName equals: 'ArrayAccess'.
	self assert: testStack size equals: 2.
	self assert: (testStack select: [:item | item isMemberOf: PPPHPNamespaceNode ]) size equals: 2.
	self assert: testStack last namespaceName equals: $\.
	self assert: testStack last isRoot.
	self assert: testStack first namespaceName equals: 'ArrayAccess'.
	