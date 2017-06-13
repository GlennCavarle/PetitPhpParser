grammar-expressions
testCallExpressionMethodFromObjectWithParameter
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$obj->aMethod(true)'
		rule: #expression.
