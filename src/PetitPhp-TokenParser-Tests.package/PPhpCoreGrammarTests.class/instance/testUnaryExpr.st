tests
testUnaryExpr
	self parse: '$myVar++' rule: #expr.
	self parse: '$myVar--' rule: #expr.
	self parse: '++$myVar' rule: #expr.
	self parse: '--$myVar' rule: #expr.
