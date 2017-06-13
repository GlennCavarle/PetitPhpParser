grammar-constants
testConstant
	self
		parse: '__FILE__ '
		rule: #constant .
	self
		parse: '__LINE__ '
		rule: #constant .
	self
		parse: 'PHP_MAX_INT_SIZE '
		rule: #constant
	
	
	