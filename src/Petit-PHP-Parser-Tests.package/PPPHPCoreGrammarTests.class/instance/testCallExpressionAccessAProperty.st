grammar-expressions
testCallExpressionAccessAProperty
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$this->aProperty'
		rule: #expression.
