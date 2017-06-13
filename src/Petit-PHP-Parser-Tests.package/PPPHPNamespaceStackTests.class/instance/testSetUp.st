tests-factory-method
testSetUp
	self assert: (stack isMemberOf: PPPHPNamespaceStack).
	self assert: stack isEmpty.
	self assert: (tokenWithoutNamespace size = 3).