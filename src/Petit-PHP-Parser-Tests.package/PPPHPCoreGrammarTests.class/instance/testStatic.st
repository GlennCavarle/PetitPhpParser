grammar-keywords
testStatic
	self 
		parse: 'static' "result should be 'static' "
		rule: #static.

	self 
		parse: 'sTAtic ' "result should be 'sTAtic' "
		rule: #static.