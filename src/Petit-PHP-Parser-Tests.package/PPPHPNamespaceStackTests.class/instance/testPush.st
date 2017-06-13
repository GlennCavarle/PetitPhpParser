tests-factory-method
testPush
	| testStack nodeOne nodeTwo nodeThree |
	nodeOne := PPPHPNamespaceNode new namespaceName: 'Test'.
	nodeTwo := PPPHPNamespaceNode new namespaceName: 'Somespace'.
	nodeThree := PPPHPNamespaceNode new namespaceName: 'Components'.
	
	testStack := PPPHPNamespaceStack new.
	
	testStack push: nodeOne.
	testStack push: nodeTwo.
	
	self assert: testStack size = 2.
	self assert: nodeTwo parentNamespace = nodeOne.
	self assert: nodeOne parentNamespace isNil.
	
	testStack push: nodeThree.
	self assert: nodeThree parentNamespace = nodeTwo.
	