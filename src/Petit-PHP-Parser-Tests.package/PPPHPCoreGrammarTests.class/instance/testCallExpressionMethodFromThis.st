grammar-expressions
testCallExpressionMethodFromThis
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$this->aMethod()'
		rule: #expression.
