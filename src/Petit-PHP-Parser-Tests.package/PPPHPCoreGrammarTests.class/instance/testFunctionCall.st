grammar-keywords
testFunctionCall
	self 
		parse: 'vendor\Component\functionName()' "Namespaced"
		rule: #functionCall.
	
	self 
		parse: 'aNonNamespacedFunction()'
		rule: #functionCall.