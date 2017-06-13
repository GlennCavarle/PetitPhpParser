grammar-expressions
testCallExpressionMethodFromObject
	"possibilities of calling functions, methods, variables, arrays and combinations"

	self
		parse: '$obj->$aMethod()'
		rule: #expression.
	