grammar-namespace
testNamespace
	self 
		parse: 'namespace' "result should be 'namespace' "
		rule: #namespace.

	self 
		parse: ' NAmespaCe ' "result should be 'NAmespaCe' "
		rule: #namespace.