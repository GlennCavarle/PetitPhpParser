tests
testBinaryExpr
	self parse: '$a + $b' rule: #expr.
	self parse: '$a and $b' rule: #expr.
	self parse: '$a += $b' rule: #expr.
	self parse: '$a <=> $b' rule: #expr.
	self parse: '$a <= $b' rule: #expr.
	self parse: '$a >= $b' rule: #expr.
	self parse: '$a instanceof $b' rule: #expr.
