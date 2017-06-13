grammar-expressions
testSignatureExpressionFail
	"Test allowed expressions in function signatures"
	self
		fail: 'new stdClass'
		rule: #signatureExpression.
	self
		fail: '$name = 3+3'
		rule: #signatureExpression.
	self
		fail: '&$name = function(){}'
		rule: #signatureExpression.
	self
		fail: '"string"=$var'
		rule: #signatureExpression.