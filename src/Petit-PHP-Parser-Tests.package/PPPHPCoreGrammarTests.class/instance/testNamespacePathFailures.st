grammar-namespace
testNamespacePathFailures
	self 
		fail: '\\vendor\cls'
		rule: #namespacePath.
	self 
		fail: '1vendor\cls'
		rule: #namespacePath.
	self 
		fail: 'vendor\cls\'
		rule: #namespacePath.
	