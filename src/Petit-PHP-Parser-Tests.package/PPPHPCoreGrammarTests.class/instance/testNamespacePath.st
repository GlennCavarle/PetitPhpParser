grammar-namespace
testNamespacePath
	self 
		parse: 'vendor\component\className'
		rule: #namespacePath.
	self
		parse: 'A\className'
		rule: #namespacePath.	
	self
		parse: 'vendor'
		rule: #namespacePath.
	