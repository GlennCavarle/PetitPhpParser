tests
testCast
	self parse: '(int)$var' rule: #expr.
	self parse: '(double) $var' rule: #expr.
	self parse: '(string)$var' rule: #expr.
	self parse: '(bool) $var' rule: #expr.
	self parse: '(array)$var' rule: #expr.
	
	