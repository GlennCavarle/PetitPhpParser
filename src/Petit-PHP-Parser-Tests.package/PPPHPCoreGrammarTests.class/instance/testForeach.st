grammar-keywords
testForeach
	self 
		parse: 'foreach' "result should be 'foreach' "
		rule: #foreach.

	self 
		parse: ' forEACH ' "result should be 'forEACH' "
		rule: #foreach.