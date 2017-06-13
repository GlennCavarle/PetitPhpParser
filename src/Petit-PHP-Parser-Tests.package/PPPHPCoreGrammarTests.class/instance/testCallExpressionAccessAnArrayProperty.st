grammar-expressions
testCallExpressionAccessAnArrayProperty
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$this->anArrayProperty[0]'
		rule: #expression.
